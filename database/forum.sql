-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2016 at 09:29 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'm_', 1, 1, 0),
(32, 'm_approve', 1, 1, 0),
(33, 'm_chgposter', 1, 1, 0),
(34, 'm_delete', 1, 1, 0),
(35, 'm_edit', 1, 1, 0),
(36, 'm_info', 1, 1, 0),
(37, 'm_lock', 1, 1, 0),
(38, 'm_merge', 1, 1, 0),
(39, 'm_move', 1, 1, 0),
(40, 'm_report', 1, 1, 0),
(41, 'm_split', 1, 1, 0),
(42, 'm_ban', 1, 0, 0),
(43, 'm_warn', 1, 0, 0),
(44, 'a_', 1, 0, 0),
(45, 'a_aauth', 1, 0, 0),
(46, 'a_attach', 1, 0, 0),
(47, 'a_authgroups', 1, 0, 0),
(48, 'a_authusers', 1, 0, 0),
(49, 'a_backup', 1, 0, 0),
(50, 'a_ban', 1, 0, 0),
(51, 'a_bbcode', 1, 0, 0),
(52, 'a_board', 1, 0, 0),
(53, 'a_bots', 1, 0, 0),
(54, 'a_clearlogs', 1, 0, 0),
(55, 'a_email', 1, 0, 0),
(56, 'a_fauth', 1, 0, 0),
(57, 'a_forum', 1, 0, 0),
(58, 'a_forumadd', 1, 0, 0),
(59, 'a_forumdel', 1, 0, 0),
(60, 'a_group', 1, 0, 0),
(61, 'a_groupadd', 1, 0, 0),
(62, 'a_groupdel', 1, 0, 0),
(63, 'a_icons', 1, 0, 0),
(64, 'a_jabber', 1, 0, 0),
(65, 'a_language', 1, 0, 0),
(66, 'a_mauth', 1, 0, 0),
(67, 'a_modules', 1, 0, 0),
(68, 'a_names', 1, 0, 0),
(69, 'a_phpinfo', 1, 0, 0),
(70, 'a_profile', 1, 0, 0),
(71, 'a_prune', 1, 0, 0),
(72, 'a_ranks', 1, 0, 0),
(73, 'a_reasons', 1, 0, 0),
(74, 'a_roles', 1, 0, 0),
(75, 'a_search', 1, 0, 0),
(76, 'a_server', 1, 0, 0),
(77, 'a_styles', 1, 0, 0),
(78, 'a_switchperm', 1, 0, 0),
(79, 'a_uauth', 1, 0, 0),
(80, 'a_user', 1, 0, 0),
(81, 'a_userdel', 1, 0, 0),
(82, 'a_viewauth', 1, 0, 0),
(83, 'a_viewlogs', 1, 0, 0),
(84, 'a_words', 1, 0, 0),
(85, 'u_', 1, 0, 0),
(86, 'u_attach', 1, 0, 0),
(87, 'u_chgavatar', 1, 0, 0),
(88, 'u_chgcensors', 1, 0, 0),
(89, 'u_chgemail', 1, 0, 0),
(90, 'u_chggrp', 1, 0, 0),
(91, 'u_chgname', 1, 0, 0),
(92, 'u_chgpasswd', 1, 0, 0),
(93, 'u_download', 1, 0, 0),
(94, 'u_hideonline', 1, 0, 0),
(95, 'u_ignoreflood', 1, 0, 0),
(96, 'u_masspm', 1, 0, 0),
(97, 'u_masspm_group', 1, 0, 0),
(98, 'u_pm_attach', 1, 0, 0),
(99, 'u_pm_bbcode', 1, 0, 0),
(100, 'u_pm_delete', 1, 0, 0),
(101, 'u_pm_download', 1, 0, 0),
(102, 'u_pm_edit', 1, 0, 0),
(103, 'u_pm_emailpm', 1, 0, 0),
(104, 'u_pm_flash', 1, 0, 0),
(105, 'u_pm_forward', 1, 0, 0),
(106, 'u_pm_img', 1, 0, 0),
(107, 'u_pm_printpm', 1, 0, 0),
(108, 'u_pm_smilies', 1, 0, 0),
(109, 'u_readpm', 1, 0, 0),
(110, 'u_savedrafts', 1, 0, 0),
(111, 'u_search', 1, 0, 0),
(112, 'u_sendemail', 1, 0, 0),
(113, 'u_sendim', 1, 0, 0),
(114, 'u_sendpm', 1, 0, 0),
(115, 'u_sig', 1, 0, 0),
(116, 'u_viewonline', 1, 0, 0),
(117, 'u_viewprofile', 1, 0, 0),
(118, 'a_mods', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 44, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 66, 1),
(1, 68, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(2, 44, 1),
(2, 47, 1),
(2, 48, 1),
(2, 56, 1),
(2, 57, 1),
(2, 58, 1),
(2, 59, 1),
(2, 66, 1),
(2, 71, 1),
(2, 79, 1),
(2, 82, 1),
(2, 83, 1),
(3, 44, 1),
(3, 47, 1),
(3, 48, 1),
(3, 50, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 72, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(4, 44, 1),
(4, 45, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(5, 85, 1),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 117, 1),
(7, 85, 1),
(7, 87, 1),
(7, 88, 1),
(7, 89, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 114, 1),
(7, 115, 1),
(7, 117, 1),
(8, 85, 1),
(8, 87, 1),
(8, 88, 1),
(8, 89, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 96, 0),
(8, 97, 0),
(8, 109, 0),
(8, 114, 0),
(8, 115, 1),
(8, 117, 1),
(9, 85, 1),
(9, 87, 0),
(9, 88, 1),
(9, 89, 1),
(9, 92, 1),
(9, 93, 1),
(9, 94, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 114, 1),
(9, 115, 1),
(9, 117, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(11, 31, 1),
(11, 32, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 43, 1),
(12, 31, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 40, 1),
(13, 31, 1),
(13, 32, 1),
(13, 35, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 0),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(23, 96, 0),
(23, 97, 0),
(23, 114, 0),
(24, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE `phpbb_acl_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE `phpbb_attachments` (
  `attach_id` mediumint(8) UNSIGNED NOT NULL,
  `post_msg_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE `phpbb_banlist` (
  `ban_id` mediumint(8) UNSIGNED NOT NULL,
  `ban_userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE `phpbb_bookmarks` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE `phpbb_bots` (
  `bot_id` mediumint(8) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('am_dir_perms', '0755', 0),
('am_file_perms', '0644', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('automod_version', '1.0.2', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', 'a7fc61a43e10fc93a1489068a1714980', 0),
('board_contact', 'hannahreyes54@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '0', 0),
('board_email', 'hannahreyes54@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_startdate', '1481348609', 0),
('board_timezone', '0', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1481357980', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'phpbb_captcha_gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('compress_method', '.zip', 0),
('confirm_refresh', '1', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_kn9ek', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '1481358531 bb408d63de46ca4b', 1),
('database_gc', '604800', 0),
('database_last_gc', '1481348993', 1),
('dbms_version', '10.1.16-MariaDB', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'en', 0),
('default_style', '2', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_confirm', '1', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('ftp_host', '', 0),
('ftp_method', '0', 0),
('ftp_port', '21', 0),
('ftp_root_path', '', 0),
('ftp_timeout', '60', 0),
('ftp_username', '', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'apcmegaphone', 1),
('num_files', '0', 1),
('num_posts', '1', 1),
('num_topics', '1', 1),
('num_users', '1', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('preview_changes', '0', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', 'edc6f0521cb35f5b', 0),
('queue_interval', '60', 0),
('rand_seed', 'df51efee5087358c7809ce150cf015ad', 1),
('rand_seed_last_update', '1481358531', 1),
('ranks_path', 'images/ranks', 0),
('record_online_date', '1481348956', 1),
('record_online_users', '2', 1),
('referer_validation', '1', 0),
('require_activation', '0', 0),
('script_path', '/forum', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1481358464', 1),
('search_store_results', '1800', 0),
('search_type', 'fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1481358531', 1),
('session_length', '3600', 0),
('site_desc', 'A short text to describe your forum', 0),
('sitename', 'yourdomain.com', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.14', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1481348990', 1),
('write_method', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE `phpbb_drafts` (
  `draft_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1481348609, 'apcmegaphone', 'AA0000', 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:19:"Your first category";i:1;i:0;}}', 'Your first forum', 'Description of your first forum.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 1, 1, 1, 2, 'Welcome to phpBB3', 1481348609, 'apcmegaphone', 'AA0000', 48, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE `phpbb_forums_track` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1481348992);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE `phpbb_log` (
  `log_id` mediumint(8) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 2, 2, 0, 0, 0, '::1', 1481348735, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:316:"<strong>EMAIL/PHP/mail()</strong><br /><em>/forum/install/index.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1680<br />";}'),
(2, 0, 2, 0, 0, 0, '::1', 1481348735, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:6:"3.0.14";}'),
(3, 0, 2, 0, 0, 0, '::1', 1481349943, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"ACP_CAT_MODS";}'),
(4, 0, 2, 0, 0, 0, '::1', 1481349944, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"ACP_MODS";}'),
(5, 0, 2, 0, 0, 0, '::1', 1481349944, 'LOG_MODULE_ADD', 'a:1:{i:0;s:11:"ACP_AUTOMOD";}'),
(6, 0, 2, 0, 0, 0, '::1', 1481349944, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:"ACP_AUTOMOD_CONFIG";}'),
(7, 0, 2, 0, 0, 0, '::1', 1481349974, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(8, 0, 2, 0, 0, 0, '::1', 1481350189, 'LOG_MOD_ADD', 'a:1:{i:0;s:24:"SiteSplat BBcore - 4.2.2";}'),
(9, 0, 2, 0, 0, 0, '::1', 1481351224, 'LOG_MOD_REMOVE', 'a:1:{i:0;s:24:"SiteSplat BBcore - 4.2.2";}'),
(10, 0, 2, 0, 0, 0, '::1', 1481351412, 'LOG_MOD_ADD', 'a:1:{i:0;s:24:"SiteSplat BBcore - 4.2.2";}'),
(11, 0, 2, 0, 0, 0, '::1', 1481351655, 'LOG_MOD_REMOVE', 'a:1:{i:0;s:24:"SiteSplat BBcore - 4.2.2";}'),
(12, 0, 2, 0, 0, 0, '::1', 1481352305, 'LOG_TEMPLATE_ADD_FS', 'a:1:{i:0;s:6:"BBOOTS";}'),
(13, 0, 2, 0, 0, 0, '::1', 1481352306, 'LOG_THEME_ADD_DB', 'a:1:{i:0;s:6:"BBOOTS";}'),
(14, 0, 2, 0, 0, 0, '::1', 1481352306, 'LOG_IMAGESET_ADD_FS', 'a:1:{i:0;s:6:"BBOOTS";}'),
(15, 0, 2, 0, 0, 0, '::1', 1481352306, 'LOG_STYLE_ADD', 'a:1:{i:0;s:6:"BBOOTS";}'),
(16, 0, 2, 0, 0, 0, '::1', 1481353332, 'LOG_MOD_ADD', 'a:1:{i:0;s:24:"SiteSplat BBcore - 4.2.2";}'),
(17, 0, 2, 0, 0, 0, '::1', 1481354652, 'LOG_THEME_REFRESHED', 'a:1:{i:0;s:6:"BBOOTS";}'),
(18, 0, 2, 0, 0, 0, '::1', 1481354951, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:14:"overall_footer";}'),
(19, 0, 2, 0, 0, 0, '::1', 1481354951, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:19:"overall_footer.html";}'),
(20, 0, 2, 0, 0, 0, '::1', 1481354967, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:9:"All files";}'),
(21, 0, 2, 0, 0, 0, '::1', 1481355247, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:14:"overall_header";}'),
(22, 0, 2, 0, 0, 0, '::1', 1481355247, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:19:"overall_header.html";}'),
(23, 0, 2, 0, 0, 0, '::1', 1481355257, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:9:"All files";}'),
(24, 0, 2, 0, 0, 0, '::1', 1481356992, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:14:"overall_header";}'),
(25, 0, 2, 0, 0, 0, '::1', 1481356992, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:19:"overall_header.html";}'),
(26, 0, 2, 0, 0, 0, '::1', 1481358451, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:14:"overall_header";}'),
(27, 0, 2, 0, 0, 0, '::1', 1481358451, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:19:"overall_header.html";}'),
(28, 0, 2, 0, 0, 0, '::1', 1481358523, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:14:"overall_header";}'),
(29, 0, 2, 0, 0, 0, '::1', 1481358523, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:6:"BBOOTS";i:1;s:19:"overall_header.html";}');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_login_attempts`
--

CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_mods`
--

CREATE TABLE `phpbb_mods` (
  `mod_id` mediumint(8) UNSIGNED NOT NULL,
  `mod_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `mod_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mod_dependencies` mediumtext COLLATE utf8_bin NOT NULL,
  `mod_name` text COLLATE utf8_bin NOT NULL,
  `mod_description` text COLLATE utf8_bin NOT NULL,
  `mod_version` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_author_notes` text COLLATE utf8_bin NOT NULL,
  `mod_author_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_author_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_author_url` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_actions` mediumtext COLLATE utf8_bin NOT NULL,
  `mod_languages` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_template` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mod_contribs` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_mods`
--

INSERT INTO `phpbb_mods` (`mod_id`, `mod_active`, `mod_time`, `mod_dependencies`, `mod_name`, `mod_description`, `mod_version`, `mod_author_notes`, `mod_author_name`, `mod_author_email`, `mod_author_url`, `mod_actions`, `mod_languages`, `mod_template`, `mod_path`, `mod_contribs`) VALUES
(3, 0, 1481353331, '', 'a:1:{s:2:"en";s:24:"SiteSplat BBcore - 4.2.2";}', 'This MOD adds proper functionality to the SiteSplat''s styles by editing the phpBB3 core files.', '4.2.2', 'This MOD adds proper functionality to the SiteSplat''s styles by editing the phpBB3 core files.', 'ThemeSplat (SiteSplat)', 'info@sitesplat.com', 'www.sitesplat.com', 'a:4:{s:3:"SQL";a:0:{}s:9:"NEW_FILES";a:1:{s:8:"root/*.*";s:3:"*.*";}s:5:"EDITS";a:19:{s:10:"common.php";a:1:{i:0;a:1:{s:23:"// Add own hook handler";a:1:{s:10:"before add";s:69:"// SiteSplat themes\n$sitesplat_themes = array(''BBOOTS'', ''FLATBOOTS'');";}}}s:10:"search.php";a:2:{i:0;a:1:{s:32:"		''U_SEARCH_WORDS''	=> $u_search,";a:1:{s:10:"before add";s:200:"''U_MARK_FORUMS''     => ($user->data[''is_registered''] || $config[''load_anon_lastread'']) ? append_sid("{$phpbb_root_path}index.$phpEx", ''hash='' . generate_link_hash(''global'') . ''&amp;mark=forums'') : '''',";}}i:1;a:1:{s:72:"				''POST_ID''			=> ($show_results == ''posts'') ? $row[''post_id''] : false,";a:1:{s:9:"after add";s:403:"				''S_POST_ANNOUNCE''	=> ($row[''topic_type''] == POST_ANNOUNCE) ? true : false,\n				''S_POST_GLOBAL''	    => ($row[''topic_type''] == POST_GLOBAL) ? true : false,\n				''S_POST_STICKY''	    => ($row[''topic_type''] == POST_STICKY) ? true : false,\n				''S_HAS_POLL''		    => ($row[''poll_start'']) ? true : false,\n				''S_LOCKED''          => (!empty($row[''topic_status''])) ? $row[''topic_status''] == ITEM_LOCKED : false,";}}}s:7:"ucp.php";a:3:{i:0;a:1:{s:49:"	$update_time = $config[''load_online_time''] * 60;";a:1:{s:9:"after add";s:69:"include($phpbb_root_path . ''includes/functions_sitesplat.'' . $phpEx);";}}i:1;a:1:{s:148:"		''SELECT''	=> ''u.user_id, u.username, u.username_clean, u.user_colour, MAX(s.session_time) as online_time, MIN(s.session_viewonline) AS viewonline'',";a:1:{s:12:"replace-with";s:224:"''SELECT''	=> ''u.user_id, u.username, u.username_clean, u.user_colour, MAX(s.session_time) as online_time, MIN(s.session_viewonline) AS viewonline, u.user_avatar, u.user_avatar_type, u.user_avatar_width, u.user_avatar_height'',";}}i:2;a:1:{s:106:"			''U_PROFILE''		=> get_username_string(''profile'', $row[''user_id''], $row[''username''], $row[''user_colour'']),";a:1:{s:9:"after add";s:137:"''AVATAR''		=> sitesplat_user_avatar($row[''user_avatar''], $row[''user_avatar_type''], $row[''user_avatar_width''], $row[''user_avatar_height'']),";}}}s:13:"viewtopic.php";a:1:{i:0;a:1:{s:34:"// Does this topic contain a poll?";a:1:{s:10:"before add";s:507:"global $sitesplat_themes;\nif (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n	$template->assign_vars(array( \n		''S_TOPIC_MOD''       => ($topic_mod != '''') ? ''<select class="selectpicker" data-container="body" data-width="auto" data-style="btn btn-default form-control" name="action" id="quick-mod-select">'' . $topic_mod . ''</select>'' : '''',\n		''BOOKMARK_CLASS''    => ($user->data[''is_registered''] && $config[''allow_bookmarks''] && $topic_data[''bookmarked'']) ? ''fa fa-star'' : ''fa fa-star-o'',\n	));\n}";}}}s:25:"adm/style/acp_styles.html";a:1:{i:0;a:1:{s:107:"	<!-- IF S_STYLE --> <!-- DEFINE $COLSPAN = 5 --> <!-- ELSE --> <!-- DEFINE $COLSPAN = 4 --> <!-- ENDIF -->";a:1:{s:10:"before add";s:103:"	<!-- IF .sitesplat_themes -->\n          <!-- INCLUDE sitesplat_update_manager.html -->\n	<!-- ENDIF -->";}}}s:19:"includes/bbcode.php";a:1:{i:0;a:1:{s:68:"				''img''		=> ''<img src="$1" alt="'' . $user->lang[''IMAGE''] . ''" />'',";a:1:{s:12:"replace-with";s:87:"''img''		=> ''<img class="img-responsive" src="$1" alt="'' . $user->lang[''IMAGE''] . ''" />'',";}}}s:22:"includes/functions.php";a:11:{i:0;a:1:{s:85:"	$seperator = ''<span class="page-sep">'' . $user->lang[''COMMA_SEPARATOR''] . ''</span>'';";a:1:{s:12:"replace-with";s:368:"global $sitesplat_themes;\n	$sitesplat_not_adm = ($user->page[''page_dir''] != ''adm'' && in_array($user->theme[''template_path''], $sitesplat_themes)) ? true : false;\n	if ($sitesplat_not_adm) {\n	$seperator = ''<li class="page-sep">'' . $user->lang[''COMMA_SEPARATOR''] . ''</li>'';\n	} else {\n	$seperator = ''<span class="page-sep">'' . $user->lang[''COMMA_SEPARATOR''] . ''</span>'';\n	}";}}i:1;a:1:{s:93:"	$page_string = ($on_page == 1) ? ''<strong>1</strong>'' : ''<a href="'' . $base_url . ''">1</a>'';";a:1:{s:9:"after add";s:313:"  global $sitesplat_themes;\n	$sitesplat_not_adm = ($user->page[''page_dir''] != ''adm'' && in_array($user->theme[''template_path''], $sitesplat_themes)) ? true : false;\n  \n	if ($sitesplat_not_adm) {\n		$page_string = ($on_page == 1) ? ''<li class="active"><a>1</a></li>'' : ''<li><a href="'' . $base_url . ''">1</a></li>'';\n	}";}}i:2;a:1:{s:89:"		$page_string .= ($start_cnt > 1) ? ''<span class="page-dots"> ... </span>'' : $seperator;";a:1:{s:12:"replace-with";s:234:"    if ($sitesplat_not_adm) {\n      $page_string .= ($start_cnt > 1) ? ''<li class="active"><a> ... </a></li>'' : $seperator;\n    } else {\n		  $page_string .= ($start_cnt > 1) ? ''<span class="page-dots"> ... </span>'' : $seperator;\n    }";}}i:3;a:1:{s:163:"			$page_string .= ($i == $on_page) ? ''<strong>'' . $i . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a>'';";a:1:{s:12:"replace-with";s:398:"			if ($sitesplat_not_adm) {\n				$page_string .= ($i == $on_page) ? ''<li class="active"><a>'' . $i . ''</a></li>'' : ''<li><a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a></li>'';\n			} else {\n				$page_string .= ($i == $on_page) ? ''<strong>'' . $i . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a>'';\n			}";}}i:4;a:1:{s:98:"		$page_string .= ($end_cnt < $total_pages) ? ''<span class="page-dots"> ... </span>'' : $seperator;";a:1:{s:12:"replace-with";s:254:"    if ($sitesplat_not_adm) {\n      $page_string .= ($end_cnt < $total_pages) ? ''<li class="active"><a> ... </a></li>'' : $seperator;\n    } else {\n      $page_string .= ($end_cnt < $total_pages) ? ''<span class="page-dots"> ... </span>'' : $seperator;\n    }";}}i:5;a:1:{s:163:"			$page_string .= ($i == $on_page) ? ''<strong>'' . $i . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a>'';";a:1:{s:12:"replace-with";s:415:"      if ($sitesplat_not_adm) {\n        $page_string .= ($i == $on_page) ? ''<li class="active"><a>'' . $i . ''</a></li>'' : ''<li><a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a></li>'';\n      } else {\n        $page_string .= ($i == $on_page) ? ''<strong>'' . $i . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($i - 1) * $per_page) . ''">'' . $i . ''</a>'';\n      }";}}i:6;a:1:{s:201:"	$page_string .= ($on_page == $total_pages) ? ''<strong>'' . $total_pages . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($total_pages - 1) * $per_page) . ''">'' . $total_pages . ''</a>'';";a:1:{s:12:"replace-with";s:475:"  if ($sitesplat_not_adm) {\n    $page_string .= ($on_page == $total_pages) ? ''<li class="active"><a>'' . $total_pages . ''</a></li>'' : ''<li><a href="'' . $base_url . "{$url_delim}start=" . (($total_pages - 1) * $per_page) . ''">'' . $total_pages . ''</a></li>'';\n  } else {\n    $page_string .= ($on_page == $total_pages) ? ''<strong>'' . $total_pages . ''</strong>'' : ''<a href="'' . $base_url . "{$url_delim}start=" . (($total_pages - 1) * $per_page) . ''">'' . $total_pages . ''</a>'';\n  }";}}i:7;a:1:{s:165:"			$page_string = ''<a href="'' . $base_url . "{$url_delim}start=" . (($on_page - 2) * $per_page) . ''">'' . $user->lang[''PREVIOUS''] . ''</a>&nbsp;&nbsp;'' . $page_string;";a:1:{s:12:"replace-with";s:405:"      if ($sitesplat_not_adm) {\n        $page_string = ''<li><a href="'' . $base_url . "{$url_delim}start=" . (($on_page - 2) * $per_page) . ''">'' . $user->lang[''PREVIOUS''] . ''</a></li>&nbsp;&nbsp;'' . $page_string;\n      } else {\n        $page_string = ''<a href="'' . $base_url . "{$url_delim}start=" . (($on_page - 2) * $per_page) . ''">'' . $user->lang[''PREVIOUS''] . ''</a>&nbsp;&nbsp;'' . $page_string;\n      }";}}i:8;a:1:{s:141:"			$page_string .= ''&nbsp;&nbsp;<a href="'' . $base_url . "{$url_delim}start=" . ($on_page * $per_page) . ''">'' . $user->lang[''NEXT''] . ''</a>'';";a:1:{s:12:"replace-with";s:357:"      if ($sitesplat_not_adm) {\n        $page_string .= ''&nbsp;&nbsp;<li><a href="'' . $base_url . "{$url_delim}start=" . ($on_page * $per_page) . ''">'' . $user->lang[''NEXT''] . ''</a></li>'';\n      } else {\n        $page_string .= ''&nbsp;&nbsp;<a href="'' . $base_url . "{$url_delim}start=" . ($on_page * $per_page) . ''">'' . $user->lang[''NEXT''] . ''</a>'';\n      }";}}i:9;a:1:{s:40:"	// Generate logged in/logged out status";a:1:{s:10:"before add";s:133:"	global $sitesplat_themes;\n	if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n		$user->add_lang(''mods/sitesplat'');\n	}";}}i:10;a:1:{s:93:"	// The following assigns all _common_ variables that may be used at any point in a template.";a:1:{s:10:"before add";s:6701:"if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n    if ( !function_exists(''get_user_avatar'')) {\n    	include_once($phpbb_root_path . ''includes/functions_display.'' . $phpEx);\n    }\n    \n    $template->assign_vars(array(	\n      ''USER_AVATAR''  				    => ($user->data[''user_avatar''] && $user->optionget(''viewavatars'')) ? get_user_avatar($user->data[''user_avatar''], $user->data[''user_avatar_type''], ($user->data[''user_avatar_width''] > $user->data[''user_avatar_height'']) ? 22 : round((22 / $user->data[''user_avatar_height'']) * $user->data[''user_avatar_width'']), ($user->data[''user_avatar_height''] > $user->data[''user_avatar_width'']) ? 22 : round((22 / $user->data[''user_avatar_width'']) * $user->data[''user_avatar_height''])) : ''<i class="fa fa-picture-o"></i>'',\n      ''CURRENT_USERNAME''  			    => ($user->data[''user_id''] == ANONYMOUS) ? $user->lang[''GUEST''] : $user->data[''username''],\n      ''U_USER_PROFILE''                  => append_sid("{$phpbb_root_path}memberlist.$phpEx", ''mode=viewprofile&amp;u='' . $user->data[''user_id'']),\n	  ''CURRENT_USERNAME_FULL''           => get_username_string(''full'', $user->data[''user_id''], $user->data[''username''], $user->data[''user_colour'']),\n	  \n	  ''USER_EMAIL_MENU''				    => $user->data[''user_email''],\n      ''USER_AVATAR_MENU''  			    => ($user->data[''user_avatar''] && $user->optionget(''viewavatars'')) ? get_user_avatar($user->data[''user_avatar''], $user->data[''user_avatar_type''], ($user->data[''user_avatar_width''] > $user->data[''user_avatar_height'']) ? 100 : round((100 / $user->data[''user_avatar_height'']) * $user->data[''user_avatar_width'']), ($user->data[''user_avatar_height''] > $user->data[''user_avatar_width'']) ? 100 : round((100 / $user->data[''user_avatar_width'']) * $user->data[''user_avatar_height''])) : ''<img alt="No avatar" src="./images/user4.png">'',\n      ''USER_AVATAR_THUMB''  				=> ($user->data[''user_avatar''] && $user->optionget(''viewavatars'')) ? get_user_avatar($user->data[''user_avatar''], $user->data[''user_avatar_type''], ($user->data[''user_avatar_width''] > $user->data[''user_avatar_height'']) ? 30 : round((30 / $user->data[''user_avatar_height'']) * $user->data[''user_avatar_width'']), ($user->data[''user_avatar_height''] > $user->data[''user_avatar_width'']) ? 30 : round((30 / $user->data[''user_avatar_width'']) * $user->data[''user_avatar_height''])) : ''<img alt="No avatar" src="./images/user4.png">'',\n      ''BOARD_EMAIL''			            =>  $config[''board_contact''],\n	  ''SITESPLAT_TOTAL_POSTS''			=> ($config[''num_posts'']) ? $config[''num_posts''] : ''0'',\n	  ''SITESPLAT_TOTAL_TOPICS''			=> ($config[''num_topics'']) ? $config[''num_topics''] : ''0'',\n	  ''SITESPLAT_TOTAL_USERS''			=> ($config[''num_users'']) ? $config[''num_users''] : ''0'',\n	  ''SITESPLAT_NEWEST_USER''           => ($config[''newest_user_id'']) ? get_username_string(''full'', $config[''newest_user_id''], $config[''newest_username''], $config[''newest_user_colour'']) : '''',\n      ''SITESPLAT_RECORD_ONLINE''		    => ($config[''record_online_users'']) ? $config[''record_online_users''] : ''0'',\n      ''SITESPLAT_CURRENTLY_ONLINE''		=> (isset($total_online_users) && $total_online_users) ? $total_online_users : ''0'',\n	  ''SITESPLAT_SEARCH_LAST_DAY''       => append_sid("{$phpbb_root_path}search.$phpEx", ''search_id=active_topics&amp;tp=1&amp;st=1''),\n      ''SITESPLAT_SEARCH_WEEK''           => append_sid("{$phpbb_root_path}search.$phpEx", ''search_id=active_topics&amp;tp=7&amp;st=7''),\n      \n	  ''U_LOGOUT''						=> ($user->data[''user_id''] != ANONYMOUS) ? append_sid("{$phpbb_root_path}ucp.$phpEx", ''mode=logout'', true, $user->session_id) : append_sid("{$phpbb_root_path}ucp.$phpEx", ''mode=login''),\n      ''U_UCP_MAIN''               		=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=main''),\n      ''U_UCP_MAIN_FRONT''            	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=main&amp;mode=front''),\n      ''U_UCP_MAIN_SUBSCRIPTION''      	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=main&amp;mode=subscribed''),\n      ''U_UCP_MAIN_BOOKMARKS''         	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=main&amp;mode=bookmarks''),\n      ''U_UCP_MAIN_DRAFTS''            	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=main&amp;mode=drafts''),\n      ''U_UCP_MAIN_ATTACHMENTS''      	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=attachments&amp;mode=attachments''),\n      \n      ''U_UCP_PROFILE''               	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=profile''),\n      ''U_UCP_PROFILE_PROFILE''           => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=profile&amp;mode=profile_info''),\n      ''U_UCP_PROFILE_SIGNITURE''      	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=profile&amp;mode=signature''),\n      ''U_UCP_PROFILE_AVATAR''         	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=profile&amp;mode=avatar''),\n      ''U_UCP_PROFILE_SETTINGS''      	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=profile&amp;mode=reg_details''),\n      \n      ''U_UCP_PREFERENCE''            	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=prefs''),\n      ''U_UCP_PREFERENCE_SETTINGS''       => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=prefs&amp;mode=personal''),\n      ''U_UCP_PREFERENCE_DEFAULTS''       => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=prefs&amp;mode=post''),\n      ''U_UCP_PREFERENCE_OPTIONS''        => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=prefs&amp;mode=view''),\n      \n      ''U_UCP_PM''                  	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm''),\n      ''U_UCP_PM_COMPOSE''             	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;mode=compose''),\n      ''U_UCP_PM_DRAFTS_COPY''            => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;mode=drafts''),\n      ''U_UCP_PM_INBOX''            	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;folder=inbox''),\n      ''U_UCP_PM_OUTBOX''            	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;folder=outbox''),\n      ''U_UCP_PM_SENTBOX''            	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;folder=sentbox''),\n      ''U_UCP_PM_OPTIONS''           	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=pm&amp;mode=options''),\n      \n      ''U_UCP_GROUPS''            		=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=groups''),\n      ''U_UCP_GROUPS_MEMBERSHIP''   	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=groups&amp;mode=membership''),\n      ''U_UCP_GROUPS_MANAGE''      		=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=groups&amp;mode=manage''),\n      \n      ''U_UCP_ZEBRA''               	    => append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=zebra''),\n      ''U_UCP_ZEBRA_FRIENDS''         	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=zebra&amp;mode=friends''),\n      ''U_UCP_ZEBRA_FOES''            	=> append_sid("{$phpbb_root_path}ucp.$phpEx", ''i=zebra&amp;mode=foes''),\n    ));\n  }";}}}s:30:"includes/functions_content.php";a:1:{i:0;a:1:{s:75:"		$sort_ary[''output''] = ''<select name="'' . $name . ''" id="'' . $name . ''">'';";a:1:{s:9:"after add";s:328:"        global $sitesplat_themes;\n				if ($user->page[''page_dir''] != ''adm'' && in_array($user->theme[''template_path''], $sitesplat_themes)) {\n      $sort_ary[''output''] = ''<select class="selectpicker" data-width="100%" data-style="btn btn-default form-control" data-container="body" name="'' . $name . ''" id="'' . $name . ''">'';\n    }";}}}s:30:"includes/functions_display.php";a:1:{i:0;a:1:{s:58:"				$pagination .= ''<span class="page-dots"> ... </span>'';";a:1:{s:12:"replace-with";s:260:"        global $sitesplat_themes;\n				if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n          $pagination .= ''<span class="page-dots"> ... </span>'';\n        } else {\n          $pagination .= ''<span class="page-dots"> ... </span>'';\n        }";}}}s:20:"includes/session.php";a:1:{i:0;a:1:{s:54:"				send_status_line(503, ''Service Unavailable'');\n			}";a:1:{s:9:"after add";s:468:"global $sitesplat_themes;\n            if (in_array($this->theme[''template_path''], $sitesplat_themes)) {\n			$template->assign_vars(array(\n                    ''ACP_DISABLE_MESSAGE''    => $config[''board_disable_msg''],)\n            );\n            page_header();\n                    $template->set_filenames(array(\n                     ''body'' => ''addons/offline_board_body.html'')\n                    );\n                    page_footer();\n                exit;\n            }";}}}s:26:"includes/acp/acp_board.php";a:1:{i:0;a:1:{s:131:"						''allow_avatar_local''	=> array(''lang'' => ''ALLOW_LOCAL'',			''validate'' => ''bool'',	''type'' => ''radio:yes_no'', ''explain'' => false),";a:1:{s:10:"before add";s:124:"''allow_gravatar''		=> array(''lang'' => ''ALLOW_GRAVATAR'',		''validate'' => ''bool'',	''type'' => ''radio:yes_no'', ''explain'' => false),";}}}s:27:"includes/acp/acp_styles.php";a:1:{i:0;a:1:{s:74:"				$this->frontend(''style'', array(''details''), array(''export'', ''delete''));";a:1:{s:10:"before add";s:1058:"				global $sitesplat_themes;\n\n				foreach ($sitesplat_themes as $sitesplat_theme)\n				{\n					if ( file_exists($phpbb_root_path . ''styles/'' . $sitesplat_theme . ''/style.cfg''))\n					{\n						$cfg_ary = parse_cfg_file($phpbb_root_path . ''styles/'' . $sitesplat_theme . ''/style.cfg'');\n\n						if ($cfg_ary)\n						{\n						  $theme_lower = strtolower($sitesplat_theme);\n\n							$version = ( !empty($cfg_ary[$theme_lower])) ? $cfg_ary[$theme_lower] : ''3.0.2'';\n\n							$ch = curl_init();\n							curl_setopt($ch, CURLOPT_URL, ''http://www.sitesplat.com/updatecheck/''.$theme_lower.''.txt'');\n							curl_setopt($ch, CURLOPT_HEADER, false);\n							curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);\n\n							$contents = curl_exec($ch);\n							$http = curl_getinfo($ch, CURLINFO_HTTP_CODE);\n							curl_close($ch);\n\n							if ($http >= 400) {\n								$contents = '''';\n							}\n\n						  $template->assign_block_vars(''sitesplat_themes'', array(\n								''NAME''		=> $sitesplat_theme,\n								''VERSION''	=> $version,\n								''MSG''			=> $contents\n							));\n	          }\n          }\n				}";}}}s:26:"includes/acp/acp_users.php";a:1:{i:0;a:1:{s:61:"								''user_email_hash''	=> phpbb_email_hash($update_email),";a:1:{s:9:"after add";s:276:"								''user_avatar''		=> ($user_row[''user_avatar_type''] == 9) ? $config[''server_protocol''] . ''www.gravatar.com/avatar/'' . md5(strtolower(trim($update_email))) . ''?d=identicon&amp;s='' . min($config[''avatar_max_width''], $config[''avatar_max_height'']) : $user_row[''user_avatar''],";}}}s:26:"includes/mcp/mcp_forum.php";a:1:{i:0;a:1:{s:72:"			''LAST_VIEW_TIME''	=> $user->format_date($row[''topic_last_view_time'']),";a:1:{s:9:"after add";s:467:"''S_POST_ANNOUNCE''	=> ($row[''topic_type''] == POST_ANNOUNCE) ? true : false,\n			''S_POST_GLOBAL''	    => ($row[''topic_type''] == POST_GLOBAL) ? true : false,\n			''S_POST_STICKY''	    => ($row[''topic_type''] == POST_STICKY) ? true : false,\n			''S_LOCKED''          => (!empty($row[''topic_status''])) ? $row[''topic_status''] == ITEM_LOCKED : false,\n			''S_TOPIC_MOVED''		=> ($row[''topic_status''] == ITEM_MOVED) ? true : false,\n			''S_HAS_POLL''		=> ($row[''poll_start'']) ? true : false,";}}}s:25:"includes/ucp/ucp_main.php";a:2:{i:0;a:1:{s:148:"						''U_TOPIC_AUTHOR''		=> get_username_string(''profile'', $row[''topic_poster''], $row[''topic_first_poster_name''], $row[''topic_first_poster_colour'']),";a:1:{s:10:"before add";s:100:"''S_LOCKED''          => (!empty($row[''topic_status''])) ? $row[''topic_status''] == ITEM_LOCKED : false,";}}i:1;a:1:{s:131:"				''U_NEWEST_POST''			=> append_sid("{$phpbb_root_path}viewtopic.$phpEx", $view_topic_url_params . ''&amp;view=unread'') . ''#unread'',";a:1:{s:10:"before add";s:472:"''S_POST_ANNOUNCE''	=> ($row[''topic_type''] == POST_ANNOUNCE) ? true : false,\n				''S_POST_GLOBAL''	    => ($row[''topic_type''] == POST_GLOBAL) ? true : false,\n				''S_POST_STICKY''	    => ($row[''topic_type''] == POST_STICKY) ? true : false,\n				''S_LOCKED''          => (!empty($row[''topic_status''])) ? $row[''topic_status''] == ITEM_LOCKED : false,\n				''S_TOPIC_MOVED''		=> ($row[''topic_status''] == ITEM_MOVED) ? true : false,\n				''S_HAS_POLL''		=> ($row[''poll_start'']) ? true : false,";}}}s:26:"includes/ucp/ucp_prefs.php";a:4:{i:0;a:1:{s:39:"				foreach ($_options as $sort_option)";a:1:{s:10:"before add";s:25:"global $sitesplat_themes;";}}i:1;a:1:{s:88:"					${''s_limit_'' . $sort_option . ''_days''} = ''<select name="'' . $sort_option . ''_st">'';";a:1:{s:12:"replace-with";s:335:"				if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n            ${''s_limit_'' . $sort_option . ''_days''} = ''<select class="selectpicker" data-container="body" name="'' . $sort_option . ''_st">'';\n          } else {\n            ${''s_limit_'' . $sort_option . ''_days''} = ''<select name="'' . $sort_option . ''_st">'';\n          }";}}i:2;a:1:{s:86:"					${''s_sort_'' . $sort_option . ''_key''} = ''<select name="'' . $sort_option . ''_sk">'';";a:1:{s:12:"replace-with";s:331:"				if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n            ${''s_sort_'' . $sort_option . ''_key''} = ''<select class="selectpicker" data-container="body" name="'' . $sort_option . ''_sk">'';\n          } else {\n            ${''s_sort_'' . $sort_option . ''_key''} = ''<select name="'' . $sort_option . ''_sk">'';\n          }";}}i:3;a:1:{s:86:"					${''s_sort_'' . $sort_option . ''_dir''} = ''<select name="'' . $sort_option . ''_sd">'';";a:1:{s:12:"replace-with";s:331:"				if (in_array($user->theme[''template_path''], $sitesplat_themes)) {\n            ${''s_sort_'' . $sort_option . ''_dir''} = ''<select class="selectpicker" data-container="body" name="'' . $sort_option . ''_sd">'';\n          } else {\n            ${''s_sort_'' . $sort_option . ''_dir''} = ''<select name="'' . $sort_option . ''_sd">'';\n          }";}}}s:28:"includes/ucp/ucp_profile.php";a:4:{i:0;a:1:{s:96:"							''user_passchg''		=> ($auth->acl_get(''u_chgpasswd'') && $data[''new_password'']) ? time() : 0,";a:1:{s:9:"after add";s:376:"							''user_avatar''		=> ($auth->acl_get(''u_chgavatar'') && $user->data[''user_avatar_type''] == 9) ? $config[''server_protocol''] . ''www.gravatar.com/avatar/'' . md5(strtolower(trim((($auth->acl_get(''u_chgemail'')) ? $data[''email''] : $user->data[''user_email''])))) . ''?d=identicon&amp;s='' . min($config[''avatar_max_width''], $config[''avatar_max_height'']) : $user->data[''user_avatar''],";}}i:1;a:1:{s:58:"						if (avatar_process_user($error, false, $can_upload))";a:1:{s:10:"before add";s:1197:"						$gravatar = (!empty($_POST[''gravatar''])) ? true : false;\n						if ($gravatar && !$auth->acl_get(''u_chgavatar'')) {\n							$error[] = $user->lang[''AVATAR_NOT_ALLOWED''];\n						}\n						else if ($gravatar && $auth->acl_get(''u_chgavatar'')) {\n							if ($delete) {\n								$sql = ''UPDATE '' . USERS_TABLE . " SET user_avatar = '''', user_avatar_type = 0, user_avatar_width = 0, user_avatar_height = 0 WHERE user_id = " . $user->data[''user_id''];\n								$db->sql_query($sql);\n							}\n							else {\n								$asize = min($config[''avatar_max_width''], $config[''avatar_max_height'']);\n								$sql = ''UPDATE '' . USERS_TABLE . " SET user_avatar = ''{$config[''server_protocol'']}www.gravatar.com/avatar/" . md5(strtolower(trim($user->data[''user_email'']))) . "?d=identicon&amp;s=" . $asize . "'', user_avatar_type = 9, user_avatar_width = " . $asize . '', user_avatar_height = '' . $asize . ''\n									WHERE user_id = '' . $user->data[''user_id''];\n								$db->sql_query($sql);\n							}\n							meta_refresh(3, $this->u_action);\n							$message = $user->lang[''PROFILE_UPDATED''] . ''<br /><br />'' . sprintf($user->lang[''RETURN_UCP''], ''<a href="'' . $this->u_action . ''">'', ''</a>'');\n							trigger_error($message);\n						}";}}i:2;a:1:{s:49:"					''AVATAR_SIZE''	=> $config[''avatar_filesize''],";a:1:{s:9:"after add";s:73:"					''S_GRAVATAR''	=> ($user->data[''user_avatar_type''] == 9) ? ''yes'' : '''',";}}i:3;a:1:{s:47:"						''S_AVATARS_ENABLED''		=> $avatars_enabled,";a:1:{s:9:"after add";s:101:"''S_ALLOW_GRAVATAR''      => (!empty($config[''allow_gravatar''])) ? (int) $config[''allow_gravatar''] : 0,";}}}s:29:"includes/ucp/ucp_register.php";a:2:{i:0;a:1:{s:41:"				if ($config[''new_member_post_limit''])";a:1:{s:10:"before add";s:502:"				if ($config[''allow_gravatar'']) {\n                    $asize = min($config[''avatar_max_width''], $config[''avatar_max_height'']);\n                    $user_row[''user_avatar''] = $config[''server_protocol''] . ''www.gravatar.com/avatar/'' . md5(strtolower(trim($data[''email'']))) . ''?d=identicon&amp;s='' . $asize;\n                    $user_row[''user_avatar_type''] = 9;\n                    $user_row[''user_avatar_width''] = $asize;\n                    $user_row[''user_avatar_height''] = $asize;\n                }";}}i:1;a:1:{s:99:"			''S_CONFIRM_REFRESH''	=> ($config[''enable_confirm''] && $config[''confirm_refresh'']) ? true : false,";a:1:{s:9:"after add";s:101:"''S_ALLOW_GRAVATAR''      => (!empty($config[''allow_gravatar''])) ? (int) $config[''allow_gravatar''] : 0,";}}}s:25:"language/en/acp/board.php";a:1:{i:0;a:1:{s:47:"	''ALLOW_LOCAL''					=> ''Enable gallery avatars'',";a:1:{s:10:"before add";s:42:"''ALLOW_GRAVATAR''				=> ''Enable Gravatars'',";}}}}s:16:"DIY_INSTRUCTIONS";a:1:{i:0;s:1250:"IMPORTANT ! \n\n#####################################################################\nLogin onto the Administration Control Panel (ACP)\n\nA) Refresh the template and theme cache :\n\n1) From the ACP Navigate to the &quot;Styles&quot; Tab.\n2) Under &quot;Style components &quot; click on &quot;Templates&quot;.\n3) Under &quot;Actions&quot; click on &quot;Refresh&quot; for the SiteSplat style installed.\n4) in the next screen, click on &quot;Yes&quot; to confirm\n5) Repeat the steps for the &quot;Themes&quot; right under the &quot;Templates&quot; title\n\n#####################################################################\nB) Purge the forum cache :\n\n1) Navigate to General Tab\n2) locate &quot;Purge the cache&quot;\n3) Click on &quot;Run Now&quot; button to the right\n4) in the next screen, click on &quot;Yes&quot; to confirm\n\n\nC) Refresh your browser.\n1)CTRL+F5 or F5 directly from your keyboard.\n#####################################################################\n\nEnjoy it ! Don''t forget to rate the theme 5 STARS on ThemeForest ;-) \nYou can find the rating system under the &quot;downloads&quot; tab on your ThemeForest account.\n\nhttp://themeforest.net/downloads/\n\nThen Under the theme download button you will see the star rating system.\n\nCheers!";}}', '', '', './../store/mods/SiteSplat_BBCore/install_mod.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 66, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 43, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 44, 51, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 52, 65, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 67, 86, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 68, 73, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 74, 85, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 87, 112, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 88, 101, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 102, 111, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 113, 168, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 114, 147, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 148, 155, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 156, 167, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 169, 218, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 172, 181, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 182, 193, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 194, 203, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 204, 217, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 219, 232, 'ACP_CAT_STYLES', '', ''),
(22, 1, 1, '', 'acp', 21, 220, 223, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 224, 231, 'ACP_STYLE_COMPONENTS', '', ''),
(24, 1, 1, '', 'acp', 0, 233, 252, 'ACP_CAT_MAINTENANCE', '', ''),
(25, 1, 1, '', 'acp', 24, 234, 243, 'ACP_FORUM_LOGS', '', ''),
(26, 1, 1, '', 'acp', 24, 244, 251, 'ACP_CAT_DATABASE', '', ''),
(27, 1, 1, '', 'acp', 0, 253, 278, 'ACP_CAT_SYSTEM', '', ''),
(28, 1, 1, '', 'acp', 27, 254, 257, 'ACP_AUTOMATION', '', ''),
(29, 1, 1, '', 'acp', 27, 258, 269, 'ACP_GENERAL_TASKS', '', ''),
(30, 1, 1, '', 'acp', 27, 270, 277, 'ACP_MODULE_MANAGEMENT', '', ''),
(31, 1, 1, '', 'acp', 0, 279, 280, 'ACP_CAT_DOT_MODS', '', ''),
(32, 1, 1, 'attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(33, 1, 1, 'attachments', 'acp', 11, 103, 104, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'attachments', 'acp', 11, 105, 106, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(35, 1, 1, 'attachments', 'acp', 11, 107, 108, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(36, 1, 1, 'attachments', 'acp', 11, 109, 110, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(37, 1, 1, 'ban', 'acp', 15, 157, 158, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(38, 1, 1, 'ban', 'acp', 15, 159, 160, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(39, 1, 1, 'ban', 'acp', 15, 161, 162, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(40, 1, 1, 'bbcodes', 'acp', 10, 89, 90, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(41, 1, 1, 'board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(42, 1, 1, 'board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(43, 1, 1, 'board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(44, 1, 1, 'board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(45, 1, 1, 'board', 'acp', 10, 91, 92, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(46, 1, 1, 'board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(47, 1, 1, 'board', 'acp', 10, 93, 94, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(48, 1, 1, 'board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(49, 1, 1, 'board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(50, 1, 1, 'board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(51, 1, 1, 'board', 'acp', 4, 45, 46, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(52, 1, 1, 'board', 'acp', 4, 47, 48, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(53, 1, 1, 'board', 'acp', 5, 53, 54, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(54, 1, 1, 'board', 'acp', 5, 55, 56, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(55, 1, 1, 'board', 'acp', 5, 57, 58, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(56, 1, 1, 'board', 'acp', 5, 59, 60, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(57, 1, 1, 'bots', 'acp', 29, 259, 260, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(58, 1, 1, 'captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(59, 1, 0, 'captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(60, 1, 1, 'contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(61, 1, 1, 'database', 'acp', 26, 245, 246, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(62, 1, 1, 'database', 'acp', 26, 247, 248, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(63, 1, 1, 'disallow', 'acp', 15, 163, 164, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(64, 1, 1, 'email', 'acp', 29, 261, 262, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(65, 1, 1, 'forums', 'acp', 7, 69, 70, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(66, 1, 1, 'groups', 'acp', 14, 149, 150, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(67, 1, 1, 'icons', 'acp', 10, 95, 96, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(68, 1, 1, 'icons', 'acp', 10, 97, 98, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(69, 1, 1, 'inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(70, 1, 1, 'jabber', 'acp', 4, 49, 50, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(71, 1, 1, 'language', 'acp', 29, 263, 264, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(72, 1, 1, 'logs', 'acp', 25, 235, 236, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(73, 1, 1, 'logs', 'acp', 25, 237, 238, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(74, 1, 1, 'logs', 'acp', 25, 239, 240, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(75, 1, 1, 'logs', 'acp', 25, 241, 242, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(76, 1, 1, 'main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(77, 1, 1, 'modules', 'acp', 30, 271, 272, 'ACP', 'acp', 'acl_a_modules'),
(78, 1, 1, 'modules', 'acp', 30, 273, 274, 'UCP', 'ucp', 'acl_a_modules'),
(79, 1, 1, 'modules', 'acp', 30, 275, 276, 'MCP', 'mcp', 'acl_a_modules'),
(80, 1, 1, 'permission_roles', 'acp', 19, 195, 196, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(81, 1, 1, 'permission_roles', 'acp', 19, 197, 198, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(82, 1, 1, 'permission_roles', 'acp', 19, 199, 200, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(83, 1, 1, 'permission_roles', 'acp', 19, 201, 202, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(84, 1, 1, 'permissions', 'acp', 16, 170, 171, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(85, 1, 0, 'permissions', 'acp', 20, 205, 206, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(86, 1, 1, 'permissions', 'acp', 18, 183, 184, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(87, 1, 1, 'permissions', 'acp', 18, 185, 186, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(88, 1, 1, 'permissions', 'acp', 18, 187, 188, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(89, 1, 1, 'permissions', 'acp', 17, 173, 174, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(90, 1, 1, 'permissions', 'acp', 13, 119, 120, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(91, 1, 1, 'permissions', 'acp', 18, 189, 190, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(92, 1, 1, 'permissions', 'acp', 13, 121, 122, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(93, 1, 1, 'permissions', 'acp', 17, 175, 176, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(94, 1, 1, 'permissions', 'acp', 14, 151, 152, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'permissions', 'acp', 18, 191, 192, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(96, 1, 1, 'permissions', 'acp', 14, 153, 154, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'permissions', 'acp', 17, 177, 178, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(98, 1, 1, 'permissions', 'acp', 17, 179, 180, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(99, 1, 1, 'permissions', 'acp', 20, 207, 208, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(100, 1, 1, 'permissions', 'acp', 20, 209, 210, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(101, 1, 1, 'permissions', 'acp', 20, 211, 212, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(102, 1, 1, 'permissions', 'acp', 20, 213, 214, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(103, 1, 1, 'permissions', 'acp', 20, 215, 216, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(104, 1, 1, 'php_info', 'acp', 29, 265, 266, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(105, 1, 1, 'profile', 'acp', 13, 123, 124, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(106, 1, 1, 'prune', 'acp', 7, 71, 72, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(107, 1, 1, 'prune', 'acp', 15, 165, 166, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(108, 1, 1, 'ranks', 'acp', 13, 125, 126, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(109, 1, 1, 'reasons', 'acp', 29, 267, 268, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(110, 1, 1, 'search', 'acp', 5, 61, 62, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(111, 1, 1, 'search', 'acp', 26, 249, 250, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(112, 1, 1, 'send_statistics', 'acp', 5, 63, 64, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(113, 1, 1, 'styles', 'acp', 22, 221, 222, 'ACP_STYLES', 'style', 'acl_a_styles'),
(114, 1, 1, 'styles', 'acp', 23, 225, 226, 'ACP_TEMPLATES', 'template', 'acl_a_styles'),
(115, 1, 1, 'styles', 'acp', 23, 227, 228, 'ACP_THEMES', 'theme', 'acl_a_styles'),
(116, 1, 1, 'styles', 'acp', 23, 229, 230, 'ACP_IMAGESETS', 'imageset', 'acl_a_styles'),
(117, 1, 1, 'update', 'acp', 28, 255, 256, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(118, 1, 1, 'users', 'acp', 13, 115, 116, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(119, 1, 0, 'users', 'acp', 13, 127, 128, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(120, 1, 0, 'users', 'acp', 13, 129, 130, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(121, 1, 0, 'users', 'acp', 13, 131, 132, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(122, 1, 0, 'users', 'acp', 13, 133, 134, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(123, 1, 0, 'users', 'acp', 13, 135, 136, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(124, 1, 0, 'users', 'acp', 13, 137, 138, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(125, 1, 0, 'users', 'acp', 13, 139, 140, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(126, 1, 0, 'users', 'acp', 13, 141, 142, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(127, 1, 0, 'users', 'acp', 13, 143, 144, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(128, 1, 0, 'users', 'acp', 13, 145, 146, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(129, 1, 1, 'words', 'acp', 10, 99, 100, 'ACP_WORDS', 'words', 'acl_a_words'),
(130, 1, 1, 'users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(131, 1, 1, 'groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(132, 1, 1, 'forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(133, 1, 1, 'logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(134, 1, 1, 'bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(135, 1, 1, 'php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(136, 1, 1, 'permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(137, 1, 1, 'permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(138, 1, 1, 'permissions', 'acp', 8, 79, 80, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'permissions', 'acp', 8, 81, 82, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(140, 1, 1, 'permissions', 'acp', 8, 83, 84, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(141, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(142, 1, 1, '', 'mcp', 0, 11, 18, 'MCP_QUEUE', '', ''),
(143, 1, 1, '', 'mcp', 0, 19, 32, 'MCP_REPORTS', '', ''),
(144, 1, 1, '', 'mcp', 0, 33, 38, 'MCP_NOTES', '', ''),
(145, 1, 1, '', 'mcp', 0, 39, 48, 'MCP_WARN', '', ''),
(146, 1, 1, '', 'mcp', 0, 49, 56, 'MCP_LOGS', '', ''),
(147, 1, 1, '', 'mcp', 0, 57, 64, 'MCP_BAN', '', ''),
(148, 1, 1, 'ban', 'mcp', 147, 58, 59, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(149, 1, 1, 'ban', 'mcp', 147, 60, 61, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(150, 1, 1, 'ban', 'mcp', 147, 62, 63, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(151, 1, 1, 'logs', 'mcp', 146, 50, 51, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(152, 1, 1, 'logs', 'mcp', 146, 52, 53, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(153, 1, 1, 'logs', 'mcp', 146, 54, 55, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(154, 1, 1, 'main', 'mcp', 141, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(155, 1, 1, 'main', 'mcp', 141, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(156, 1, 1, 'main', 'mcp', 141, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(157, 1, 1, 'main', 'mcp', 141, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(158, 1, 1, 'notes', 'mcp', 144, 34, 35, 'MCP_NOTES_FRONT', 'front', ''),
(159, 1, 1, 'notes', 'mcp', 144, 36, 37, 'MCP_NOTES_USER', 'user_notes', ''),
(160, 1, 1, 'pm_reports', 'mcp', 143, 26, 27, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(161, 1, 1, 'pm_reports', 'mcp', 143, 28, 29, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(162, 1, 1, 'pm_reports', 'mcp', 143, 30, 31, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(163, 1, 1, 'queue', 'mcp', 142, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(164, 1, 1, 'queue', 'mcp', 142, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(165, 1, 1, 'queue', 'mcp', 142, 16, 17, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(166, 1, 1, 'reports', 'mcp', 143, 20, 21, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(167, 1, 1, 'reports', 'mcp', 143, 22, 23, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(168, 1, 1, 'reports', 'mcp', 143, 24, 25, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(169, 1, 1, 'warn', 'mcp', 145, 40, 41, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(170, 1, 1, 'warn', 'mcp', 145, 42, 43, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(171, 1, 1, 'warn', 'mcp', 145, 44, 45, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(172, 1, 1, 'warn', 'mcp', 145, 46, 47, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(173, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(174, 1, 1, '', 'ucp', 0, 15, 26, 'UCP_PROFILE', '', ''),
(175, 1, 1, '', 'ucp', 0, 27, 36, 'UCP_PREFS', '', ''),
(176, 1, 1, '', 'ucp', 0, 37, 48, 'UCP_PM', '', ''),
(177, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(178, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(179, 1, 1, 'attachments', 'ucp', 173, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(180, 1, 1, 'auth_link', 'ucp', 174, 16, 17, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(181, 1, 1, 'groups', 'ucp', 177, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(182, 1, 1, 'groups', 'ucp', 177, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(183, 1, 1, 'main', 'ucp', 173, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(184, 1, 1, 'main', 'ucp', 173, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(185, 1, 1, 'main', 'ucp', 173, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(186, 1, 1, 'main', 'ucp', 173, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(187, 1, 1, 'notifications', 'ucp', 175, 28, 29, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(188, 1, 1, 'notifications', 'ucp', 173, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', ''),
(189, 1, 0, 'pm', 'ucp', 176, 38, 39, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(190, 1, 1, 'pm', 'ucp', 176, 40, 41, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(191, 1, 1, 'pm', 'ucp', 176, 42, 43, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(192, 1, 1, 'pm', 'ucp', 176, 44, 45, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(193, 1, 0, 'pm', 'ucp', 176, 46, 47, 'UCP_PM_POPUP_TITLE', 'popup', 'cfg_allow_privmsg'),
(194, 1, 1, 'prefs', 'ucp', 175, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(195, 1, 1, 'prefs', 'ucp', 175, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(196, 1, 1, 'prefs', 'ucp', 175, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(197, 1, 1, 'profile', 'ucp', 174, 18, 19, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', ''),
(198, 1, 1, 'profile', 'ucp', 174, 20, 21, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(199, 1, 1, 'profile', 'ucp', 174, 22, 23, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar && (cfg_allow_avatar_local || cfg_allow_avatar_remote || cfg_allow_avatar_upload || cfg_allow_avatar_remote_upload)'),
(200, 1, 1, 'profile', 'ucp', 174, 24, 25, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(201, 1, 1, 'zebra', 'ucp', 178, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(202, 1, 1, 'zebra', 'ucp', 178, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(203, 1, 1, '', 'acp', 0, 281, 288, 'ACP_CAT_MODS', '', 'acl_a_mods'),
(204, 1, 1, '', 'acp', 203, 282, 287, 'ACP_MODS', '', 'acl_a_mods'),
(205, 1, 1, 'mods', 'acp', 204, 283, 284, 'ACP_AUTOMOD', 'frontend', 'acl_a_mods'),
(206, 1, 1, 'mods', 'acp', 204, 285, 286, 'ACP_AUTOMOD_CONFIG', 'config', 'acl_a_mods');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE `phpbb_poll_votes` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE `phpbb_posts` (
  `post_id` mediumint(8) UNSIGNED NOT NULL,
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(1, 1, 2, 2, 0, '::1', 1481348609, 1, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE `phpbb_privmsgs` (
  `msg_id` mediumint(8) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE `phpbb_reports` (
  `report_id` mediumint(8) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE `phpbb_search_wordlist` (
  `word_id` mediumint(8) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'example', 0, 1),
(3, 'post', 0, 1),
(4, 'your', 0, 1),
(5, 'phpbb3', 0, 2),
(6, 'installation', 0, 1),
(7, 'everything', 0, 1),
(8, 'seems', 0, 1),
(9, 'working', 0, 1),
(10, 'you', 0, 1),
(11, 'may', 0, 1),
(12, 'delete', 0, 1),
(13, 'like', 0, 1),
(14, 'and', 0, 1),
(15, 'continue', 0, 1),
(16, 'set', 0, 1),
(17, 'board', 0, 1),
(18, 'during', 0, 1),
(19, 'the', 0, 1),
(20, 'process', 0, 1),
(21, 'first', 0, 1),
(22, 'category', 0, 1),
(23, 'forum', 0, 1),
(24, 'are', 0, 1),
(25, 'assigned', 0, 1),
(26, 'appropriate', 0, 1),
(27, 'permissions', 0, 1),
(28, 'for', 0, 1),
(29, 'predefined', 0, 1),
(30, 'usergroups', 0, 1),
(31, 'administrators', 0, 1),
(32, 'bots', 0, 1),
(33, 'global', 0, 1),
(34, 'moderators', 0, 1),
(35, 'guests', 0, 1),
(36, 'registered', 0, 1),
(37, 'users', 0, 1),
(38, 'coppa', 0, 1),
(39, 'also', 0, 1),
(40, 'choose', 0, 1),
(41, 'not', 0, 1),
(42, 'forget', 0, 1),
(43, 'assign', 0, 1),
(44, 'all', 0, 1),
(45, 'these', 0, 1),
(46, 'new', 0, 1),
(47, 'categories', 0, 1),
(48, 'forums', 0, 1),
(49, 'create', 0, 1),
(50, 'recommended', 0, 1),
(51, 'rename', 0, 1),
(52, 'copy', 0, 1),
(53, 'from', 0, 1),
(54, 'while', 0, 1),
(55, 'creating', 0, 1),
(56, 'have', 0, 1),
(57, 'fun', 0, 1),
(58, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 5, 1),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('deacf91973cfd87183216ce719458116', 2, 0, 1481348733, 1481348733, 1481358529, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '', 'index.php?style=2', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 0, 1, 1, 1),
(2, 'BBOOTS', '© SiteSplat.com (c) 2013 - 2015', 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset`
--

CREATE TABLE `phpbb_styles_imageset` (
  `imageset_id` mediumint(8) UNSIGNED NOT NULL,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_imageset`
--

INSERT INTO `phpbb_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver'),
(2, 'BBOOTS', '© SiteSplat.com (c) 2013 - 2015', 'BBOOTS');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset_data`
--

CREATE TABLE `phpbb_styles_imageset_data` (
  `image_id` mediumint(8) UNSIGNED NOT NULL,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `image_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_imageset_data`
--

INSERT INTO `phpbb_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(1, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(2, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(3, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(4, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(5, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(6, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(7, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(8, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(9, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(10, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(11, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(12, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(13, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(14, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(15, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(16, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(17, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(18, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(19, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(20, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(21, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(22, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(23, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(24, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(25, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(26, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(27, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(28, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(29, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(30, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(31, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(32, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(33, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(34, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(35, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(36, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(37, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(38, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(39, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(40, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(41, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(42, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(43, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(44, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(45, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(46, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(47, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(48, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(49, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(50, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(51, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(52, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(53, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(54, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(55, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(56, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(57, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(58, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(59, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(60, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(61, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(62, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(63, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(64, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(65, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(66, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(67, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(68, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(69, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(70, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(71, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(72, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(73, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(74, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(75, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(76, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(77, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(78, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(79, 'site_logo', 'site_logo.gif', '', 52, 139, 2),
(80, 'forum_link', 'forum_link.gif', '', 27, 27, 2),
(81, 'forum_read', 'forum_read.gif', '', 27, 27, 2),
(82, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 2),
(83, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 2),
(84, 'forum_unread', 'forum_unread.gif', '', 27, 27, 2),
(85, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 2),
(86, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 2),
(87, 'topic_moved', 'topic_moved.gif', '', 27, 27, 2),
(88, 'topic_read', 'topic_read.gif', '', 27, 27, 2),
(89, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 2),
(90, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 2),
(91, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 2),
(92, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 2),
(93, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 2),
(94, 'topic_unread', 'topic_unread.gif', '', 27, 27, 2),
(95, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 2),
(96, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 2),
(97, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 2),
(98, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 2),
(99, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 2),
(100, 'sticky_read', 'sticky_read.gif', '', 27, 27, 2),
(101, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 2),
(102, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 2),
(103, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 2),
(104, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 2),
(105, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 2),
(106, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 2),
(107, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 2),
(108, 'announce_read', 'announce_read.gif', '', 27, 27, 2),
(109, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 2),
(110, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 2),
(111, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 2),
(112, 'announce_unread', 'announce_unread.gif', '', 27, 27, 2),
(113, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 2),
(114, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 2),
(115, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 2),
(116, 'global_read', 'announce_read.gif', '', 27, 27, 2),
(117, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 2),
(118, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 2),
(119, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 2),
(120, 'global_unread', 'announce_unread.gif', '', 27, 27, 2),
(121, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 2),
(122, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 2),
(123, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 2),
(124, 'subforum_read', 'subforum_read.gif', '', 9, 11, 2),
(125, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 2),
(126, 'pm_read', 'topic_read.gif', '', 27, 27, 2),
(127, 'pm_unread', 'topic_unread.gif', '', 27, 27, 2),
(128, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 2),
(129, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 2),
(130, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 2),
(131, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 2),
(132, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 2),
(133, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 2),
(134, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 2),
(135, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 2),
(136, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 2),
(137, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 2),
(138, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 2),
(139, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 2),
(140, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 2),
(141, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 2),
(142, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 2),
(143, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 2),
(144, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 2),
(145, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 2),
(146, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 2),
(147, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 2),
(148, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 2),
(149, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 2),
(150, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 2),
(151, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 2),
(152, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 2),
(153, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 2),
(154, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 2),
(155, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 2),
(156, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template`
--

CREATE TABLE `phpbb_styles_template` (
  `template_id` mediumint(8) UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_template`
--

INSERT INTO `phpbb_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, ''),
(2, 'BBOOTS', '© SiteSplat.com (c) 2013 - 2015', 'BBOOTS', 'lNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template_data`
--

CREATE TABLE `phpbb_styles_template_data` (
  `template_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_theme`
--

CREATE TABLE `phpbb_styles_theme` (
  `theme_id` mediumint(8) UNSIGNED NOT NULL,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme_mtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_theme`
--

INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1481348880, '/*  phpBB3 Style Sheet\n    --------------------------------------------------------------\n	Style name:			prosilver (the default phpBB 3.0.x style)\n	Based on style:		\n	Original author:	Tom Beddard ( http://www.subblue.com/ )\n	Modified by:		phpBB Group ( https://www.phpbb.com/ )\n    --------------------------------------------------------------\n*/\n\n/* General Markup Styles\n---------------------------------------- */\n\n* {\n	/* Reset browsers default margin, padding and font sizes */\n	margin: 0;\n	padding: 0;\n}\n\nhtml {\n	font-size: 100%;\n	/* Always show a scrollbar for short pages - stops the jump when the scrollbar appears. non-IE browsers */\n	height: 101%;\n}\n\nbody {\n	/* Text-Sizing with ems: http://www.clagnut.com/blog/348/ */\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	color: #828282;\n	background-color: #FFFFFF;\n	/*font-size: 62.5%;			 This sets the default font size to be equivalent to 10px */\n	font-size: 10px;\n	margin: 0;\n	padding: 12px 0;\n}\n\nh1 {\n	/* Forum name */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	margin-right: 200px;\n	color: #FFFFFF;\n	margin-top: 15px;\n	font-weight: bold;\n	font-size: 2em;\n}\n\nh2 {\n	/* Forum header titles */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	font-weight: normal;\n	color: #3f3f3f;\n	font-size: 2em;\n	margin: 0.8em 0 0.2em 0;\n}\n\nh2.solo {\n	margin-bottom: 1em;\n}\n\nh3 {\n	/* Sub-headers (also used as post headers, but defined later) */\n	font-family: Arial, Helvetica, sans-serif;\n	font-weight: bold;\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	padding-bottom: 2px;\n	font-size: 1.05em;\n	color: #989898;\n	margin-top: 20px;\n}\n\nh4 {\n	/* Forum and topic list titles */\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, Sans-serif;\n	font-size: 1.3em;\n}\n\np {\n	line-height: 1.3em;\n	font-size: 1.1em;\n	margin-bottom: 1.5em;\n}\n\nimg {\n	border-width: 0;\n}\n\nhr {\n	/* Also see tweaks.css */\n	border: 0 none #FFFFFF;\n	border-top: 1px solid #CCCCCC;\n	height: 1px;\n	margin: 5px 0;\n	display: block;\n	clear: both;\n}\n\nhr.dashed {\n	border-top: 1px dashed #CCCCCC;\n	margin: 10px 0;\n}\n\nhr.divider {\n	display: none;\n}\n\np.right {\n	text-align: right;\n}\n\n/* Main blocks\n---------------------------------------- */\n#wrap {\n	padding: 0 20px;\n	min-width: 650px;\n}\n\n#simple-wrap {\n	padding: 6px 10px;\n}\n\n#page-body {\n	margin: 4px 0;\n	clear: both;\n}\n\n#page-footer {\n	clear: both;\n}\n\n#page-footer h3 {\n	margin-top: 20px;\n}\n\n#logo {\n	float: left;\n	width: auto;\n	padding: 10px 13px 0 10px;\n}\n\na#logo:hover {\n	text-decoration: none;\n}\n\n/* Search box\n--------------------------------------------- */\n#search-box {\n	color: #FFFFFF;\n	position: relative;\n	margin-top: 30px;\n	margin-right: 5px;\n	display: block;\n	float: right;\n	text-align: right;\n	white-space: nowrap; /* For Opera */\n}\n\n#search-box #keywords {\n	width: 95px;\n	background-color: #FFF;\n}\n\n#search-box input {\n	border: 1px solid #b0b0b0;\n}\n\n/* .button1 style defined later, just a few tweaks for the search button version */\n#search-box input.button1 {\n	padding: 1px 5px;\n}\n\n#search-box li {\n	text-align: right;\n	margin-top: 4px;\n}\n\n#search-box img {\n	vertical-align: middle;\n	margin-right: 3px;\n}\n\n/* Site description and logo */\n#site-description {\n	float: left;\n	width: 70%;\n}\n\n#site-description h1 {\n	margin-right: 0;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background: #ebebeb none repeat-x 0 0;\n	color: #FFFFFF;\n	margin-bottom: 4px;\n	padding: 0 5px;\n}\n\n.navbar {\n	background-color: #ebebeb;\n	padding: 0 10px;\n}\n\n.forabg {\n	background: #b1b1b1 none repeat-x 0 0;\n	margin-bottom: 4px;\n	padding: 0 5px;\n	clear: both;\n}\n\n.forumbg {\n	background: #ebebeb none repeat-x 0 0;\n	margin-bottom: 4px;\n	padding: 0 5px;\n	clear: both;\n}\n\n.panel {\n	margin-bottom: 4px;\n	padding: 0 10px;\n	background-color: #f3f3f3;\n	color: #3f3f3f;\n}\n\n.post {\n	padding: 0 10px;\n	margin-bottom: 4px;\n	background-repeat: no-repeat;\n	background-position: 100% 0;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #f7f7f7;}\n.bg2	{ background-color: #f2f2f2; }\n.bg3	{ background-color: #ebebeb; }\n\n.rowbg {\n	margin: 5px 5px 2px 5px;\n}\n\n.ucprowbg {\n	background-color: #e2e2e2;\n}\n\n.fieldsbg {\n	/*border: 1px #DBDEE2 solid;*/\n	background-color: #eaeaea;\n}\n\nspan.corners-top, span.corners-bottom, span.corners-top span, span.corners-bottom span {\n	font-size: 1px;\n	line-height: 1px;\n	display: block;\n	height: 5px;\n	background-repeat: no-repeat;\n}\n\nspan.corners-top {\n	background-image: none;\n	background-position: 0 0;\n	margin: 0 -5px;\n}\n\nspan.corners-top span {\n	background-image: none;\n	background-position: 100% 0;\n}\n\nspan.corners-bottom {\n	background-image: none;\n	background-position: 0 100%;\n	margin: 0 -5px;\n	clear: both;\n}\n\nspan.corners-bottom span {\n	background-image: none;\n	background-position: 100% 100%;\n}\n\n.headbg span.corners-bottom {\n	margin-bottom: -1px;\n}\n\n.post span.corners-top, .post span.corners-bottom, .panel span.corners-top, .panel span.corners-bottom, .navbar span.corners-top, .navbar span.corners-bottom {\n	margin: 0 -10px;\n}\n\n.rules span.corners-top {\n	margin: 0 -10px 5px -10px;\n}\n\n.rules span.corners-bottom {\n	margin: 5px -10px 0 -10px;\n}\n\n/* Horizontal lists\n----------------------------------------*/\nul.linklist {\n	display: block;\n	margin: 0;\n}\n\nul.linklist li {\n	display: block;\n	list-style-type: none;\n	float: left;\n	width: auto;\n	margin-right: 5px;\n	font-size: 1.1em;\n	line-height: 2.2em;\n}\n\nul.linklist li.rightside, p.rightside {\n	float: right;\n	margin-right: 0;\n	margin-left: 5px;\n	text-align: right;\n}\n\nul.navlinks {\n	padding-bottom: 1px;\n	margin-bottom: 1px;\n	border-bottom: 1px solid #FFFFFF;\n	font-weight: bold;\n}\n\nul.leftside {\n	float: left;\n	margin-left: 0;\n	margin-right: 5px;\n	text-align: left;\n}\n\nul.rightside {\n	float: right;\n	margin-left: 5px;\n	margin-right: -5px;\n	text-align: right;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 {\n	/* See tweaks.css */\n}\n\n#ucp-main table.table1 {\n	padding: 2px;\n}\n\ntable.table1 thead th {\n	font-weight: normal;\n	text-transform: uppercase;\n	color: #FFFFFF;\n	line-height: 1.3em;\n	font-size: 1em;\n	padding: 0 0 4px 3px;\n}\n\ntable.table1 thead th span {\n	padding-left: 7px;\n}\n\ntable.table1 tbody tr {\n	border: 1px solid #cfcfcf;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #f6f6f6;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #6a6a6a;\n	font-size: 1.1em;\n}\n\ntable.table1 tbody td {\n	padding: 5px;\n	border-top: 1px solid #FAFAFA;\n}\n\ntable.table1 tbody th {\n	padding: 5px;\n	border-bottom: 1px solid #000000;\n	text-align: left;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\n/* Specific column styles */\ntable.table1 .name		{ text-align: left; }\ntable.table1 .posts		{ text-align: center !important; width: 7%; }\ntable.table1 .joined	{ text-align: left; width: 15%; }\ntable.table1 .active	{ text-align: left; width: 15%; }\ntable.table1 .mark		{ text-align: center; width: 7%; }\ntable.table1 .info		{ text-align: left; width: 30%; }\ntable.table1 .info div	{ width: 100%; white-space: normal; overflow: hidden; }\ntable.table1 .autocol	{ line-height: 2em; white-space: nowrap; }\ntable.table1 thead .autocol { padding-left: 1em; }\n\ntable.table1 span.rank-img {\n	float: right;\n	width: auto;\n}\n\ntable.info td {\n	padding: 3px;\n}\n\ntable.info tbody th {\n	padding: 3px;\n	text-align: right;\n	vertical-align: top;\n	color: #000000;\n	font-weight: normal;\n}\n\n.forumbg table.table1 {\n	margin: 0;\n}\n\n.forumbg-table > .inner {\n	margin: 0 -1px;\n}\n\n.forumbg-table > .inner > span.corners-top {\n	margin: 0 -4px -1px -4px;\n}\n\n.forumbg-table > .inner > span.corners-bottom {\n	margin: -1px -4px 0 -4px;\n}\n\n/* Misc layout styles\n---------------------------------------- */\n/* column[1-2] styles are containers for two column layouts \n   Also see tweaks.css */\n.column1 {\n	float: left;\n	clear: left;\n	width: 49%;\n}\n\n.column2 {\n	float: right;\n	clear: right;\n	width: 49%;\n}\n\n/* General classes for placing floating blocks */\n.left-box {\n	float: left;\n	width: auto;\n	text-align: left;\n}\n\n.right-box {\n	float: right;\n	width: auto;\n	text-align: right;\n}\n\ndl.details {\n	/*font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;*/\n	font-size: 1.1em;\n}\n\ndl.details dt {\n	float: left;\n	clear: left;\n	width: 30%;\n	text-align: right;\n	color: #000000;\n	display: block;\n}\n\ndl.details dd {\n	margin-left: 0;\n	padding-left: 5px;\n	margin-bottom: 5px;\n	color: #828282;\n	float: left;\n	width: 65%;\n}\n\n/* Pagination\n---------------------------------------- */\n.pagination {\n	height: 1%; /* IE tweak (holly hack) */\n	width: auto;\n	text-align: right;\n	margin-top: 5px;\n	float: right;\n}\n\n.pagination span.page-sep {\n	display: none;\n}\n\nli.pagination {\n	margin-top: 0;\n}\n\n.pagination strong, .pagination b {\n	font-weight: normal;\n}\n\n.pagination span strong {\n	padding: 0 2px;\n	margin: 0 2px;\n	font-weight: normal;\n	color: #FFFFFF;\n	background-color: #bfbfbf;\n	border: 1px solid #bfbfbf;\n	font-size: 0.9em;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\n	font-weight: normal;\n	text-decoration: none;\n	color: #747474;\n	margin: 0 2px;\n	padding: 0 2px;\n	background-color: #eeeeee;\n	border: 1px solid #bababa;\n	font-size: 0.9em;\n	line-height: 1.5em;\n}\n\n.pagination span a:hover {\n	border-color: #d2d2d2;\n	background-color: #d2d2d2;\n	color: #FFF;\n	text-decoration: none;\n}\n\n.pagination img {\n	vertical-align: middle;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	display: block;\n	float: right;\n	width: auto;\n	margin-top: 0;\n	padding: 1px 0 1px 15px;\n	font-size: 0.9em;\n	background: none 0 50% no-repeat;\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #d2d2d2;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n#forum-permissions {\n	float: right;\n	width: auto;\n	padding-left: 5px;\n	margin-left: 5px;\n	margin-top: 10px;\n	text-align: right;\n}\n\n.copyright {\n	padding: 5px;\n	text-align: center;\n	color: #555555;\n}\n\n.small {\n	font-size: 0.9em !important;\n}\n\n.titlespace {\n	margin-bottom: 15px;\n}\n\n.headerspace {\n	margin-top: 20px;\n}\n\n.error {\n	color: #bcbcbc;\n	font-weight: bold;\n	font-size: 1em;\n}\n\n.reported {\n	background-color: #f7f7f7;\n}\n\nli.reported:hover {\n	background-color: #ececec;\n}\n\ndiv.rules {\n	background-color: #ececec;\n	color: #bcbcbc;\n	padding: 0 10px;\n	margin: 10px 0;\n	font-size: 1.1em;\n}\n\ndiv.rules ul, div.rules ol {\n	margin-left: 20px;\n}\n\np.rules {\n	background-color: #ececec;\n	background-image: none;\n	padding: 5px;\n}\n\np.rules img {\n	vertical-align: middle;\n	padding-top: 5px;\n}\n\np.rules a {\n	vertical-align: middle;\n	clear: both;\n}\n\n#top {\n	position: absolute;\n	top: -20px;\n}\n\n.clear {\n	display: block;\n	clear: both;\n	font-size: 1px;\n	line-height: 1px;\n	background: transparent;\n}\n/* Link Styles\n---------------------------------------- */\n\n/* Links adjustment to correctly display an order of rtl/ltr mixed content */\na {\n	direction: ltr;\n	unicode-bidi: embed;\n}\n\na:link	{ color: #898989; text-decoration: none; }\na:visited	{ color: #898989; text-decoration: none; }\na:hover	{ color: #d3d3d3; text-decoration: underline; }\na:active	{ color: #d2d2d2; text-decoration: none; }\n\n/* Coloured usernames */\n.username-coloured {\n	font-weight: bold;\n	display: inline !important;\n	padding: 0 !important;\n}\n\n/* Links on gradient backgrounds */\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n	text-decoration: none;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\n	color: #FFFFFF;\n	text-decoration: none;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\n	color: #ffffff;\n	text-decoration: underline;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\n	color: #ffffff;\n	text-decoration: none;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.forumtitle:visited { color: #898989; } */\n\na.forumtitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.forumtitle:active {\n	color: #898989;\n}\n\na.topictitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.topictitle:visited { color: #d2d2d2; } */\n\na.topictitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.topictitle:active {\n	color: #898989;\n}\n\n/* Post body links */\n.postlink {\n	text-decoration: none;\n	color: #d2d2d2;\n	border-bottom: 1px solid #d2d2d2;\n	padding-bottom: 0;\n}\n\n/* .postlink:visited { color: #bdbdbd; } */\n\n.postlink:active {\n	color: #d2d2d2;\n}\n\n.postlink:hover {\n	background-color: #f6f6f6;\n	text-decoration: none;\n	color: #404040;\n}\n\n.signature a, .signature a:visited, .signature a:hover, .signature a:active {\n	border: none;\n	text-decoration: underline;\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:visited, .postprofile dt.author a {\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	text-decoration: underline;\n	color: #d3d3d3;\n}\n\n/* CSS spec requires a:link, a:visited, a:hover and a:active rules to be specified in this order. */\n/* See http://www.phpbb.com/bugs/phpbb3/59685 */\n.postprofile a:active {\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n\n/* Profile searchresults */	\n.search .postprofile a {\n	color: #898989;\n	text-decoration: none; \n	font-weight: normal;\n}\n\n.search .postprofile a:hover {\n	color: #d3d3d3;\n	text-decoration: underline; \n}\n\n/* Back to top of page */\n.back2top {\n	clear: both;\n	height: 11px;\n	text-align: right;\n}\n\na.top {\n	background: none no-repeat top left;\n	text-decoration: none;\n	width: {IMG_ICON_BACK_TOP_WIDTH}px;\n	height: {IMG_ICON_BACK_TOP_HEIGHT}px;\n	display: block;\n	float: right;\n	overflow: hidden;\n	letter-spacing: 1000px;\n	text-indent: 11px;\n}\n\na.top2 {\n	background: none no-repeat 0 50%;\n	text-decoration: none;\n	padding-left: 15px;\n}\n\n/* Arrow links  */\na.up		{ background: none no-repeat left center; }\na.down		{ background: none no-repeat right center; }\na.left		{ background: none no-repeat 3px 60%; }\na.right		{ background: none no-repeat 95% 60%; }\n\na.up, a.up:link, a.up:active, a.up:visited {\n	padding-left: 10px;\n	text-decoration: none;\n	border-bottom-width: 0;\n}\n\na.up:hover {\n	background-position: left top;\n	background-color: transparent;\n}\n\na.down, a.down:link, a.down:active, a.down:visited {\n	padding-right: 10px;\n}\n\na.down:hover {\n	background-position: right bottom;\n	text-decoration: none;\n}\n\na.left, a.left:active, a.left:visited {\n	padding-left: 12px;\n}\n\na.left:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 0 60%;\n}\n\na.right, a.right:active, a.right:visited {\n	padding-right: 12px;\n}\n\na.right:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 100% 60%;\n}\n\n/* invisible skip link, used for accessibility  */\n.skiplink {\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\n/* Feed icon in forumlist_body.html */\na.feed-icon-forum {\n	float: right;\n	margin: 3px;\n}\n/* Content Styles\n---------------------------------------- */\n\nul.topiclist {\n	display: block;\n	list-style-type: none;\n	margin: 0;\n}\n\nul.forums {\n	background: #f9f9f9 none repeat-x 0 0;\n}\n\nul.topiclist li {\n	display: block;\n	list-style-type: none;\n	color: #777777;\n	margin: 0;\n}\n\nul.topiclist dl {\n	position: relative;\n}\n\nul.topiclist li.row dl {\n	padding: 2px 0;\n}\n\nul.topiclist dt {\n	display: block;\n	float: left;\n	width: 50%;\n	font-size: 1.1em;\n	padding-left: 5px;\n	padding-right: 5px;\n}\n\nul.topiclist dd {\n	display: block;\n	float: left;\n	border-left: 1px solid #FFFFFF;\n	padding: 4px 0;\n}\n\nul.topiclist dfn {\n	/* Labels for post/view counts */\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\nul.topiclist li.row dt a.subforum {\n	background-image: none;\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	position: relative;\n	white-space: nowrap;\n	padding: 0 0 0 12px;\n}\n\n.forum-image {\n	float: left;\n	padding-top: 5px;\n	margin-right: 5px;\n}\n\nli.row {\n	border-top: 1px solid #FFFFFF;\n	border-bottom: 1px solid #8f8f8f;\n}\n\nli.row strong {\n	font-weight: normal;\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #f6f6f6;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\nli.header dt, li.header dd {\n	line-height: 1em;\n	border-left-width: 0;\n	margin: 2px 0 4px 0;\n	color: #FFFFFF;\n	padding-top: 2px;\n	padding-bottom: 2px;\n	font-size: 1em;\n	font-family: Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\nli.header dt {\n	font-weight: bold;\n}\n\nli.header dd {\n	margin-left: 1px;\n}\n\nli.header dl.icon {\n	min-height: 0;\n}\n\nli.header dl.icon dt {\n	/* Tweak for headers alignment when folder icon used */\n	padding-left: 0;\n	padding-right: 50px;\n}\n\n/* Forum list column styles */\ndl.icon {\n	min-height: 35px;\n	background-position: 10px 50%;		/* Position of folder icon */\n	background-repeat: no-repeat;\n}\n\ndl.icon dt {\n	padding-left: 45px;					/* Space for folder icon */\n	background-repeat: no-repeat;\n	background-position: 5px 95%;		/* Position of topic icon */\n}\n\ndd.posts, dd.topics, dd.views {\n	width: 8%;\n	text-align: center;\n	line-height: 2.2em;\n	font-size: 1.2em;\n}\n\n/* List in forum description */\ndl.icon dt ol,\ndl.icon dt ul {\n	list-style-position: inside;\n	margin-left: 1em;\n}\n\ndl.icon dt li {\n	display: list-item;\n	list-style-type: inherit;\n}\n\ndd.lastpost {\n	width: 25%;\n	font-size: 1.1em;\n}\n\ndd.redirect {\n	font-size: 1.1em;\n	line-height: 2.5em;\n}\n\ndd.moderation {\n	font-size: 1.1em;\n}\n\ndd.lastpost span, ul.topiclist dd.searchby span, ul.topiclist dd.info span, ul.topiclist dd.time span, dd.redirect span, dd.moderation span {\n	display: block;\n	padding-left: 5px;\n}\n\ndd.time {\n	width: auto;\n	line-height: 200%;\n	font-size: 1.1em;\n}\n\ndd.extra {\n	width: 12%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.mark {\n	float: right !important;\n	width: 9%;\n	text-align: center;\n	line-height: 200%;\n	font-size: 1.2em;\n}\n\ndd.info {\n	width: 30%;\n}\n\ndd.option {\n	width: 15%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.searchby {\n	width: 47%;\n	font-size: 1.1em;\n	line-height: 1em;\n}\n\nul.topiclist dd.searchextra {\n	margin-left: 5px;\n	padding: 0.2em 0;\n	font-size: 1.1em;\n	color: #333333;\n	border-left: none;\n	clear: both;\n	width: 98%;\n	overflow: hidden;\n}\n\n/* Container for post/reply buttons and pagination */\n.topic-actions {\n	margin-bottom: 3px;\n	font-size: 1.1em;\n	height: 28px;\n	min-height: 28px;\n}\ndiv[class].topic-actions {\n	height: auto;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	padding: 0;\n	line-height: 1.48em;\n	color: #333333;\n	width: 76%;\n	float: left;\n	clear: both;\n}\n\n.postbody .ignore {\n	font-size: 1.1em;\n}\n\n.postbody h3.first {\n	/* The first post on the page uses this */\n	font-size: 1.7em;\n}\n\n.postbody h3 {\n	/* Postbody requires a different h3 format - so change it here */\n	font-size: 1.5em;\n	padding: 2px 0 0 0;\n	margin: 0 0 0.3em 0 !important;\n	text-transform: none;\n	border: none;\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	line-height: 125%;\n}\n\n.postbody h3 img {\n	/* Also see tweaks.css */\n	vertical-align: bottom;\n}\n\n.postbody .content {\n	font-size: 1.3em;\n}\n\n.search .postbody {\n	width: 68%\n}\n\n/* Topic review panel\n----------------------------------------*/\n#review {\n	margin-top: 2em;\n}\n\n#topicreview {\n	padding-right: 5px;\n	overflow: auto;\n	height: 300px;\n}\n\n#topicreview .postbody {\n	width: auto;\n	float: none;\n	margin: 0;\n	height: auto;\n}\n\n#topicreview .post {\n	height: auto;\n}\n\n#topicreview h2 {\n	border-bottom-width: 0;\n}\n\n.post-ignore .postbody {\n	display: none;\n}\n\n/* MCP Post details\n----------------------------------------*/\n#post_details\n{\n	/* This will only work in IE7+, plus the others */\n	overflow: auto;\n	max-height: 300px;\n}\n\n#expand\n{\n	clear: both;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	min-height: 3em;\n	overflow: hidden;\n	line-height: 1.4em;\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	color: #333333;\n	padding-bottom: 1px;\n}\n\n.content h2, .panel h2 {\n	font-weight: normal;\n	color: #989898;\n	border-bottom: 1px solid #CCCCCC;\n	font-size: 1.6em;\n	margin-top: 0.5em;\n	margin-bottom: 0.5em;\n	padding-bottom: 0.5em;\n}\n\n.panel h3 {\n	margin: 0.5em 0;\n}\n\n.panel p {\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\n.content p {\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\ndl.faq {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n	margin-top: 1em;\n	margin-bottom: 2em;\n	line-height: 1.4em;\n}\n\ndl.faq dt {\n	font-weight: bold;\n	color: #333333;\n}\n\n.content dl.faq {\n	font-size: 1.2em;\n	margin-bottom: 0.5em;\n}\n\n.content li {\n	list-style-type: inherit;\n}\n\n.content ul, .content ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n.posthilit {\n	background-color: #f3f3f3;\n	color: #BCBCBC;\n	padding: 0 2px 1px 2px;\n}\n\n.announce, .unreadpost {\n	/* Highlight the announcements & unread posts box */\n	border-left-color: #BCBCBC;\n	border-right-color: #BCBCBC;\n}\n\n/* Post author */\np.author {\n	margin: 0 15em 0.6em 0;\n	padding: 0 0 5px 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	line-height: 1.2em;\n}\n\n/* Post signature */\n.signature {\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1.1em;\n	border-top: 1px solid #CCCCCC;\n	clear: left;\n	line-height: 140%;\n	overflow: hidden;\n	width: 100%;\n}\n\ndd .signature {\n	margin: 0;\n	padding: 0;\n	clear: none;\n	border: none;\n}\n\n.signature li {\n	list-style-type: inherit;\n}\n\n.signature ul, .signature ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n/* Post noticies */\n.notice {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: auto;\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1em;\n	border-top: 1px dashed #CCCCCC;\n	clear: left;\n	line-height: 130%;\n}\n\n/* Jump to post link for now */\nul.searchresults {\n	list-style: none;\n	text-align: right;\n	clear: both;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background: #ebebeb none 6px 8px no-repeat;\n	border: 1px solid #dbdbdb;\n	font-size: 0.95em;\n	margin: 0.5em 1px 0 25px;\n	overflow: hidden;\n	padding: 5px;\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color: #bababa;\n	font-size: 1em;\n	margin: 0.5em 1px 0 15px;	\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #e4e4e4;\n}\n\nblockquote cite {\n	/* Username/source of quoter */\n	font-style: normal;\n	font-weight: bold;\n	margin-left: 20px;\n	display: block;\n	font-size: 0.9em;\n}\n\nblockquote cite cite {\n	font-size: 1em;\n}\n\nblockquote.uncited {\n	padding-top: 25px;\n}\n\n/* Code block */\ndl.codebox {\n	padding: 3px;\n	background-color: #FFFFFF;\n	border: 1px solid #d8d8d8;\n	font-size: 1em;\n}\n\ndl.codebox dt {\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	font-size: 0.8em;\n	font-weight: bold;\n	display: block;\n}\n\nblockquote dl.codebox {\n	margin-left: 0;\n}\n\ndl.codebox code {\n	/* Also see tweaks.css */\n	overflow: auto;\n	display: block;\n	height: auto;\n	max-height: 200px;\n	white-space: normal;\n	padding-top: 5px;\n	font: 0.9em Monaco, "Andale Mono","Courier New", Courier, mono;\n	line-height: 1.3em;\n	color: #8b8b8b;\n	margin: 2px 0;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #000000; }\n.syntaxdefault	{ color: #bcbcbc; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #585858; }\n.syntaxstring	{ color: #a7a7a7; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	float: left;\n	width: auto; \n	margin: 5px 5px 5px 0;\n	padding: 6px;\n	background-color: #FFFFFF;\n	border: 1px dashed #d8d8d8;\n	clear: left;\n}\n\n.pm-message .attachbox {\n	background-color: #f3f3f3;\n}\n\n.attachbox dt {\n	font-family: Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\n.attachbox dd {\n	margin-top: 4px;\n	padding-top: 4px;\n	clear: left;\n	border-top: 1px solid #d8d8d8;\n}\n\n.attachbox dd dd {\n	border: none;\n}\n\n.attachbox p {\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attachbox p.stats\n{\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attach-image {\n	margin: 3px 0;\n	width: 100%;\n	max-height: 350px;\n	overflow: auto;\n}\n\n.attach-image img {\n	border: 1px solid #999999;\n/*	cursor: move; */\n	cursor: default;\n}\n\n/* Inline image thumbnails */\ndiv.inline-attachment dl.thumbnail, div.inline-attachment dl.file {\n	display: block;\n	margin-bottom: 4px;\n}\n\ndiv.inline-attachment p {\n	font-size: 100%;\n}\n\ndl.file {\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n	display: block;\n}\n\ndl.file dt {\n	text-transform: none;\n	margin: 0;\n	padding: 0;\n	font-weight: bold;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\ndl.file dd {\n	color: #666666;\n	margin: 0;\n	padding: 0;	\n}\n\ndl.thumbnail img {\n	padding: 3px;\n	border: 1px solid #666666;\n	background-color: #FFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n	font-style: italic;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\n.attachbox dl.thumbnail dd {\n	font-size: 100%;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border: 1px solid #d2d2d2;\n}\n\n/* Post poll styles\n----------------------------------------*/\nfieldset.polls {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n}\n\nfieldset.polls dl {\n	margin-top: 5px;\n	border-top: 1px solid #e2e2e2;\n	padding: 5px 0 0 0;\n	line-height: 120%;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	font-weight: bold;\n	color: #000000;\n}\n\nfieldset.polls dt {\n	text-align: left;\n	float: left;\n	display: block;\n	width: 30%;\n	border-right: none;\n	padding: 0;\n	margin: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd {\n	float: left;\n	width: 10%;\n	border-left: none;\n	padding: 0 5px;\n	margin-left: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd.resultbar {\n	width: 50%;\n}\n\nfieldset.polls dd input {\n	margin: 2px 0;\n}\n\nfieldset.polls dd div {\n	text-align: right;\n	font-family: Arial, Helvetica, sans-serif;\n	color: #FFFFFF;\n	font-weight: bold;\n	padding: 0 2px;\n	overflow: visible;\n	min-width: 2%;\n}\n\n.pollbar1 {\n	background-color: #aaaaaa;\n	border-bottom: 1px solid #747474;\n	border-right: 1px solid #747474;\n}\n\n.pollbar2 {\n	background-color: #bebebe;\n	border-bottom: 1px solid #8c8c8c;\n	border-right: 1px solid #8c8c8c;\n}\n\n.pollbar3 {\n	background-color: #D1D1D1;\n	border-bottom: 1px solid #aaaaaa;\n	border-right: 1px solid #aaaaaa;\n}\n\n.pollbar4 {\n	background-color: #e4e4e4;\n	border-bottom: 1px solid #bebebe;\n	border-right: 1px solid #bebebe;\n}\n\n.pollbar5 {\n	background-color: #f8f8f8;\n	border-bottom: 1px solid #D1D1D1;\n	border-right: 1px solid #D1D1D1;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	/* Also see tweaks.css */\n	margin: 5px 0 10px 0;\n	min-height: 80px;\n	color: #666666;\n	border-left: 1px solid #FFFFFF;\n	width: 22%;\n	float: right;\n	display: inline;\n}\n.pm .postprofile {\n	border-left: 1px solid #DDDDDD;\n}\n\n.postprofile dd, .postprofile dt {\n	line-height: 1.2em;\n	margin-left: 8px;\n}\n\n.postprofile strong {\n	font-weight: normal;\n	color: #000000;\n}\n\n.avatar {\n	border: none;\n	margin-bottom: 3px;\n}\n\n.online {\n	background-image: none;\n	background-position: 100% 0;\n	background-repeat: no-repeat;\n}\n\n/* Poster profile used by search*/\n.search .postprofile {\n	width: 30%;\n}\n\n/* pm list in compose message if mass pm is enabled */\ndl.pmlist dt {\n	width: 60% !important;\n}\n\ndl.pmlist dt textarea {\n	width: 95%;\n}\n\ndl.pmlist dd {\n	margin-left: 61% !important;\n	margin-bottom: 2px;\n}\n/* Button Styles\n---------------------------------------- */\n\n/* Rollover buttons\n   Based on: http://wellstyled.com/css-nopreload-rollovers.html\n----------------------------------------*/\n.buttons {\n	float: left;\n	width: auto;\n	height: auto;\n}\n\n/* Rollover state */\n.buttons div {\n	float: left;\n	margin: 0 5px 0 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\n.buttons div a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n	position: relative;\n	overflow: hidden;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\n/*.buttons div span		{ display: none; }*/\n/*.buttons div a:hover	{ background-image: none; }*/\n.buttons div span			{ position: absolute; width: 100%; height: 100%; cursor: pointer;}\n.buttons div a:hover span	{ background-position: 0 100%; }\n\n/* Big button images */\n.reply-icon span	{ background: transparent none 0 0 no-repeat; }\n.post-icon span		{ background: transparent none 0 0 no-repeat; }\n.locked-icon span	{ background: transparent none 0 0 no-repeat; }\n.pmreply-icon span	{ background: none 0 0 no-repeat; }\n.newpm-icon span 	{ background: none 0 0 no-repeat; }\n.forwardpm-icon span 	{ background: none 0 0 no-repeat; }\n\n/* Set big button dimensions */\n.buttons div.reply-icon		{ width: {IMG_BUTTON_TOPIC_REPLY_WIDTH}px; height: {IMG_BUTTON_TOPIC_REPLY_HEIGHT}px; }\n.buttons div.post-icon		{ width: {IMG_BUTTON_TOPIC_NEW_WIDTH}px; height: {IMG_BUTTON_TOPIC_NEW_HEIGHT}px; }\n.buttons div.locked-icon	{ width: {IMG_BUTTON_TOPIC_LOCKED_WIDTH}px; height: {IMG_BUTTON_TOPIC_LOCKED_HEIGHT}px; }\n.buttons div.pmreply-icon	{ width: {IMG_BUTTON_PM_REPLY_WIDTH}px; height: {IMG_BUTTON_PM_REPLY_HEIGHT}px; }\n.buttons div.newpm-icon		{ width: {IMG_BUTTON_PM_NEW_WIDTH}px; height: {IMG_BUTTON_PM_NEW_HEIGHT}px; }\n.buttons div.forwardpm-icon	{ width: {IMG_BUTTON_PM_FORWARD_WIDTH}px; height: {IMG_BUTTON_PM_FORWARD_HEIGHT}px; }\n\n/* Sub-header (navigation bar)\n--------------------------------------------- */\na.print, a.sendemail, a.fontsize {\n	display: block;\n	overflow: hidden;\n	height: 18px;\n	text-indent: -5000px;\n	text-align: left;\n	background-repeat: no-repeat;\n}\n\na.print {\n	background-image: none;\n	width: 22px;\n}\n\na.sendemail {\n	background-image: none;\n	width: 22px;\n}\n\na.fontsize {\n	background-image: none;\n	background-position: 0 -1px;\n	width: 29px;\n}\n\na.fontsize:hover {\n	background-position: 0 -20px;\n	text-decoration: none;\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome, .icon-faq, .icon-members, .icon-home, .icon-ucp, .icon-register, .icon-logout,\n.icon-bookmark, .icon-bump, .icon-subscribe, .icon-unsubscribe, .icon-pages, .icon-search {\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	background-image: none;\n	padding: 1px 0 0 17px;\n}\n\n/* Poster profile icons\n----------------------------------------*/\nul.profile-icons {\n	padding-top: 10px;\n	list-style: none;\n}\n\n/* Rollover state */\nul.profile-icons li {\n	float: left;\n	margin: 0 6px 3px 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\nul.profile-icons li a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\nul.profile-icons li span { display:none; }\nul.profile-icons li a:hover { background: none; }\n\n/* Positioning of moderator icons */\n.postbody ul.profile-icons {\n	float: right;\n	width: auto;\n	padding: 0;\n}\n\n.postbody ul.profile-icons li {\n	margin: 0 3px;\n}\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background: none top left no-repeat; }\n.aim-icon, .aim-icon a			{ background: none top left no-repeat; }\n.yahoo-icon, .yahoo-icon a		{ background: none top left no-repeat; }\n.web-icon, .web-icon a			{ background: none top left no-repeat; }\n.msnm-icon, .msnm-icon a			{ background: none top left no-repeat; }\n.icq-icon, .icq-icon a			{ background: none top left no-repeat; }\n.jabber-icon, .jabber-icon a		{ background: none top left no-repeat; }\n.pm-icon, .pm-icon a				{ background: none top left no-repeat; }\n.quote-icon, .quote-icon a		{ background: none top left no-repeat; }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background: none top left no-repeat; }\n.warn-icon, .warn-icon a			{ background: none top left no-repeat; }\n.edit-icon, .edit-icon a			{ background: none top left no-repeat; }\n.delete-icon, .delete-icon a		{ background: none top left no-repeat; }\n.info-icon, .info-icon a			{ background: none top left no-repeat; }\n\n/* Set profile icon dimensions */\nul.profile-icons li.email-icon		{ width: {IMG_ICON_CONTACT_EMAIL_WIDTH}px; height: {IMG_ICON_CONTACT_EMAIL_HEIGHT}px; }\nul.profile-icons li.aim-icon	{ width: {IMG_ICON_CONTACT_AIM_WIDTH}px; height: {IMG_ICON_CONTACT_AIM_HEIGHT}px; }\nul.profile-icons li.yahoo-icon	{ width: {IMG_ICON_CONTACT_YAHOO_WIDTH}px; height: {IMG_ICON_CONTACT_YAHOO_HEIGHT}px; }\nul.profile-icons li.web-icon	{ width: {IMG_ICON_CONTACT_WWW_WIDTH}px; height: {IMG_ICON_CONTACT_WWW_HEIGHT}px; }\nul.profile-icons li.msnm-icon	{ width: {IMG_ICON_CONTACT_MSNM_WIDTH}px; height: {IMG_ICON_CONTACT_MSNM_HEIGHT}px; }\nul.profile-icons li.icq-icon	{ width: {IMG_ICON_CONTACT_ICQ_WIDTH}px; height: {IMG_ICON_CONTACT_ICQ_HEIGHT}px; }\nul.profile-icons li.jabber-icon	{ width: {IMG_ICON_CONTACT_JABBER_WIDTH}px; height: {IMG_ICON_CONTACT_JABBER_HEIGHT}px; }\nul.profile-icons li.pm-icon		{ width: {IMG_ICON_CONTACT_PM_WIDTH}px; height: {IMG_ICON_CONTACT_PM_HEIGHT}px; }\nul.profile-icons li.quote-icon	{ width: {IMG_ICON_POST_QUOTE_WIDTH}px; height: {IMG_ICON_POST_QUOTE_HEIGHT}px; }\nul.profile-icons li.report-icon	{ width: {IMG_ICON_POST_REPORT_WIDTH}px; height: {IMG_ICON_POST_REPORT_HEIGHT}px; }\nul.profile-icons li.edit-icon	{ width: {IMG_ICON_POST_EDIT_WIDTH}px; height: {IMG_ICON_POST_EDIT_HEIGHT}px; }\nul.profile-icons li.delete-icon	{ width: {IMG_ICON_POST_DELETE_WIDTH}px; height: {IMG_ICON_POST_DELETE_HEIGHT}px; }\nul.profile-icons li.info-icon	{ width: {IMG_ICON_POST_INFO_WIDTH}px; height: {IMG_ICON_POST_INFO_HEIGHT}px; }\nul.profile-icons li.warn-icon	{ width: {IMG_ICON_USER_WARN_WIDTH}px; height: {IMG_ICON_USER_WARN_HEIGHT}px; }\n\n/* Fix profile icon default margins */\nul.profile-icons li.edit-icon	{ margin: 0 0 0 3px; }\nul.profile-icons li.quote-icon	{ margin: 0 0 0 10px; }\nul.profile-icons li.info-icon, ul.profile-icons li.report-icon	{ margin: 0 3px 0 0; }\n/* Control Panel Styles\n---------------------------------------- */\n\n\n/* Main CP box\n----------------------------------------*/\n#cp-menu {\n	float:left;\n	width: 19%;\n	margin-top: 1em;\n	margin-bottom: 5px;\n}\n\n#cp-main {\n	float: left;\n	width: 81%;\n}\n\n#cp-main .content {\n	padding: 0;\n}\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #bfbfbf;\n}\n\n#cp-main .panel p {\n	font-size: 1.1em;\n}\n\n#cp-main .panel ol {\n	margin-left: 2em;\n	font-size: 1.1em;\n}\n\n#cp-main .panel li.row {\n	border-bottom: 1px solid #cbcbcb;\n	border-top: 1px solid #F9F9F9;\n}\n\nul.cplist {\n	margin-bottom: 5px;\n	border-top: 1px solid #cbcbcb;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n	margin-bottom: 2px;\n}\n\n#cp-main table.table1 {\n	margin-bottom: 1em;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	font-weight: bold;\n	border-bottom: 1px solid #333333;\n	padding: 5px;\n}\n\n#cp-main table.table1 tbody th {\n	font-style: italic;\n	background-color: transparent !important;\n	border-bottom: none;\n}\n\n#cp-main .pagination {\n	float: right;\n	width: auto;\n	padding-top: 1px;\n}\n\n#cp-main .postbody p {\n	font-size: 1.1em;\n}\n\n#cp-main .pm-message {\n	border: 1px solid #e2e2e2;\n	margin: 10px 0;\n	background-color: #FFFFFF;\n	width: auto;\n	float: none;\n}\n\n.pm-message h2 {\n	padding-bottom: 5px;\n}\n\n#cp-main .postbody h3, #cp-main .box2 h3 {\n	margin-top: 0;\n}\n\n#cp-main .buttons {\n	margin-left: 0;\n}\n\n#cp-main ul.linklist {\n	margin: 0;\n}\n\n/* MCP Specific tweaks */\n.mcp-main .postbody {\n	width: 100%;\n}\n\n.tabs-container h2 {\n	float: left;\n	margin-bottom: 0px;\n}\n\n.tabs-container #minitabs {\n	float: right;\n	margin-top: 19px;\n}\n\n.tabs-container:after {\n	display: block;\n	clear: both;\n	content: '''';\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs {\n	line-height: normal;\n	margin: 20px 0 -1px 7px;\n	min-width: 570px;\n}\n\n#tabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#tabs li {\n	display: inline;\n	margin: 0;\n	padding: 0;\n	font-size: 1em;\n	font-weight: bold;\n}\n\n#tabs a {\n	float: left;\n	background: none no-repeat 0% -35px;\n	margin: 0 1px 0 0;\n	padding: 0 0 0 5px;\n	text-decoration: none;\n	position: relative;\n	cursor: pointer;\n}\n\n#tabs a span {\n	float: left;\n	display: block;\n	background: none no-repeat 100% -35px;\n	padding: 6px 10px 6px 5px;\n	color: #828282;\n	white-space: nowrap;\n}\n\n#tabs a:hover span {\n	color: #bcbcbc;\n}\n\n#tabs .activetab a {\n	background-position: 0 0;\n	border-bottom: 1px solid #ebebeb;\n}\n\n#tabs .activetab a span {\n	background-position: 100% 0;\n	padding-bottom: 7px;\n	color: #333333;\n}\n\n#tabs a:hover {\n	background-position: 0 -70px;\n}\n\n#tabs a:hover span {\n	background-position:100% -70px;\n}\n\n#tabs .activetab a:hover {\n	background-position: 0 0;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n	background-position: 100% 0;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs {\n	line-height: normal;\n	margin: -20px 7px 0 0;\n}\n\n#minitabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#minitabs li {\n	display: block;\n	float: right;\n	padding: 0 10px 4px 10px;\n	font-size: 1em;\n	font-weight: bold;\n	background-color: #f2f2f2;\n	margin-left: 2px;\n}\n\n#minitabs a {\n}\n\n#minitabs a:hover {\n	text-decoration: none;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n/* Container for sub-navigation list */\n#navigation {\n	width: 100%;\n	padding-top: 36px;\n}\n\n#navigation ul {\n	list-style:none;\n}\n\n/* Default list state */\n#navigation li {\n	margin: 1px 0;\n	padding: 0;\n	font-weight: bold;\n	display: inline;\n}\n\n/* Link styles for the sub-section links */\n#navigation a {\n	display: block;\n	padding: 5px;\n	margin: 1px 0;\n	text-decoration: none;\n	font-weight: bold;\n	color: #333;\n	background: #cfcfcf none repeat-y 100% 0;\n}\n\n#navigation a:hover {\n	text-decoration: none;\n	background-color: #c6c6c6;\n	color: #bcbcbc;\n	background-image: none;\n}\n\n#navigation #active-subsection a {\n	display: block;\n	color: #d3d3d3;\n	background-color: #F9F9F9;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #d3d3d3;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	border-bottom: none;\n	padding: 0;\n	margin-left: 10px;\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #F9F9F9;\n}\n\n#cp-main .pm {\n	background-color: #FFFFFF;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: none;\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: none;\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: none;\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #f9f9f9;\n	padding: 0 5px;\n	margin: 10px 15px 10px 5px;\n}\n\n.cp-mini span.corners-top, .cp-mini span.corners-bottom {\n	margin: 0 -5px;\n}\n\ndl.mini dt {\n	font-weight: bold;\n	color: #676767;\n}\n\ndl.mini dd {\n	padding-top: 4px;\n}\n\n.friend-online {\n	font-weight: bold;\n}\n\n.friend-offline {\n	font-style: italic;\n}\n\n/* PM Styles\n----------------------------------------*/\n#pm-menu {\n	line-height: 2.5em;\n}\n\n/* PM panel adjustments */\n.reply-all a.left {\n	background-position: 3px 60%;\n}\n\n.reply-all a.left:hover {\n	background-position: 0px 60%;\n}\n\n.reply-all {\n	font-size: 11px;\n	padding-top: 5px;\n}\n\n/* PM Message history */\n.current {\n	color: #999999;\n}\n\n/* Defined rules list for PM options */\nol.def-rules {\n	padding-left: 0;\n}\n\nol.def-rules li {\n	line-height: 180%;\n	padding: 1px;\n}\n\n/* PM marking colours */\n.pmlist li.bg1 {\n	padding: 0 3px;\n}\n\n.pmlist li.bg2 {\n	padding: 0 3px;\n}\n\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #bcbcbc;\n	border-right-color: #bcbcbc;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	padding: 0;\n	border: solid 3px #ffffff;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	padding: 0;\n	border: solid 3px #c2c2c2;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	padding: 0;\n	border: solid 3px #bdbdbd;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	padding: 0;\n	border: solid 3px #000000;\n	border-width: 0 3px;\n}\n\n.pm-legend {\n	border-left-width: 10px;\n	border-left-style: solid;\n	border-right-width: 0;\n	margin-bottom: 3px;\n	padding-left: 3px;\n}\n\n/* Avatar gallery */\n#gallery label {\n	position: relative;\n	float: left;\n	margin: 10px;\n	padding: 5px;\n	width: auto;\n	background: #FFFFFF;\n	border: 1px solid #CCC;\n	text-align: center;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n/* Form Styles\n---------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nfieldset {\n	border-width: 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n}\n\ninput {\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	padding: 0 3px;\n	font-size: 1em;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n}\n\nselect {\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	border: 1px solid #666666;\n	padding: 1px;\n	background-color: #FAFAFA;\n	font-size: 1em;\n}\n\nselect:focus {\n	outline-style: none;\n}\n\noption {\n	padding-right: 1em;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\ntextarea {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: 60%;\n	padding: 2px;\n	font-size: 1em;\n	line-height: 1.4em;\n}\n\nlabel {\n	cursor: default;\n	padding-right: 5px;\n	color: #676767;\n}\n\nlabel input {\n	vertical-align: middle;\n}\n\nlabel img {\n	vertical-align: middle;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\nfieldset dl {\n	padding: 4px 0;\n}\n\nfieldset dt {\n	float: left;	\n	width: 40%;\n	text-align: left;\n	display: block;\n}\n\nfieldset dd {\n	margin-left: 41%;\n	vertical-align: top;\n	margin-bottom: 3px;\n}\n\n/* Specific layout 1 */\nfieldset.fields1 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields1 dd {\n	margin-left: 15em;\n	border-left-width: 0;\n}\n\nfieldset.fields1 {\n	background-color: transparent;\n}\n\nfieldset.fields1 div {\n	margin-bottom: 3px;\n}\n\n/* Set it back to 0px for the reCaptcha divs: PHPBB3-9587 */\nfieldset.fields1 #recaptcha_widget_div div {\n	margin-bottom: 0;\n}\n\n/* Specific layout 2 */\nfieldset.fields2 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields2 dd {\n	margin-left: 16em;\n	border-left-width: 0;\n}\n\n/* Form elements */\ndt label {\n	font-weight: bold;\n	text-align: left;\n}\n\ndd label {\n	white-space: nowrap;\n	color: #333;\n}\n\ndd input, dd textarea {\n	margin-right: 3px;\n}\n\ndd select {\n	width: auto;\n}\n\ndd textarea {\n	width: 85%;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n#timezone {\n	width: 95%;\n}\n\n* html #timezone {\n	width: 50%;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login {\n	margin-top: 5px;\n}\n\nfieldset.quick-login input {\n	width: auto;\n}\n\nfieldset.quick-login input.inputbox {\n	width: 15%;\n	vertical-align: middle;\n	margin-right: 5px;\n	background-color: #f3f3f3;\n}\n\nfieldset.quick-login label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\n/* Display options on viewtopic/viewforum pages  */\nfieldset.display-options {\n	text-align: center;\n	margin: 3px 0 5px 0;\n}\n\nfieldset.display-options label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.display-options a {\n	margin-top: 3px;\n}\n\n/* Display actions for ucp and mcp pages */\nfieldset.display-actions {\n	text-align: right;\n	line-height: 2em;\n	white-space: nowrap;\n	padding-right: 1em;\n}\n\nfieldset.display-actions label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.sort-options {\n	line-height: 2em;\n}\n\n/* MCP forum selection*/\nfieldset.forum-selection {\n	margin: 5px 0 3px 0;\n	float: right;\n}\n\nfieldset.forum-selection2 {\n	margin: 13px 0 3px 0;\n	float: right;\n}\n\n/* Jumpbox */\nfieldset.jumpbox {\n	text-align: right;\n	margin-top: 15px;\n	height: 2.5em;\n}\n\nfieldset.quickmod {\n	width: 50%;\n	float: right;\n	text-align: right;\n	height: 2.5em;\n}\n\n/* Submit button fieldset */\nfieldset.submit-buttons {\n	text-align: center;\n	vertical-align: middle;\n	margin: 5px 0;\n}\n\nfieldset.submit-buttons input {\n	vertical-align: middle;\n	padding-top: 3px;\n	padding-bottom: 3px;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n/* Buttons used in the editor */\n#format-buttons {\n	margin: 15px 0 2px 0;\n}\n\n#format-buttons input, #format-buttons select {\n	vertical-align: middle;\n}\n\n/* Main message box */\n#message-box {\n	width: 80%;\n}\n\n#message-box textarea {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	width: 450px;\n	height: 270px;\n	min-width: 100%;\n	max-width: 100%;\n	font-size: 1.2em;\n	color: #333333;\n}\n\n/* Emoticons panel */\n#smiley-box {\n	width: 18%;\n	float: right;\n}\n\n#smiley-box img {\n	margin: 3px;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF;\n	border: 1px solid #c0c0c0;\n	color: #333333;\n	padding: 2px;\n	cursor: text;\n}\n\n.inputbox:hover {\n	border: 1px solid #eaeaea;\n}\n\n.inputbox:focus {\n	border: 1px solid #eaeaea;\n	color: #4b4b4b;\n	outline-style: none;\n}\n\ninput.inputbox	{ width: 85%; }\ninput.medium	{ width: 50%; }\ninput.narrow	{ width: 25%; }\ninput.tiny		{ width: 125px; }\n\ntextarea.inputbox {\n	width: 85%;\n}\n\n.autowidth {\n	width: auto !important;\n}\n\n/* Form button styles\n---------------------------------------- */\ninput.button1, input.button2 {\n	font-size: 1em;\n}\n\na.button1, input.button1, input.button3, a.button2, input.button2 {\n	width: auto !important;\n	padding-top: 1px;\n	padding-bottom: 1px;\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	color: #000;\n	background: #FAFAFA none repeat-x top left;\n}\n\na.button1, input.button1 {\n	font-weight: bold;\n	border: 1px solid #666666;\n}\n\ninput.button3 {\n	padding: 0;\n	margin: 0;\n	line-height: 5px;\n	height: 12px;\n	background-image: none;\n	font-variant: small-caps;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border: 1px solid #666666;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	text-decoration: none;\n	color: #000000;\n	padding: 2px 8px;\n	line-height: 250%;\n	vertical-align: text-bottom;\n	background-position: 0 1px;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border: 1px solid #BCBCBC;\n	background-position: 0 100%;\n	color: #BCBCBC;\n}\n\ninput.disabled {\n	font-weight: normal;\n	color: #666666;\n}\n\n/* Focus states */\ninput.button1:focus, input.button2:focus, input.button3:focus {\n	outline-style: none;\n}\n\n/* Topic and forum Search */\n.search-box {\n	margin-top: 3px;\n	margin-left: 5px;\n	float: left;\n}\n\n.search-box input {\n}\n\ninput.search {\n	background-image: none;\n	background-repeat: no-repeat;\n	background-position: left 1px;\n	padding-left: 17px;\n}\n\n.full { width: 95%; }\n.medium { width: 50%;}\n.narrow { width: 25%;}\n.tiny { width: 10%;}\n/* Style Sheet Tweaks\n\nThese style definitions are mainly IE specific \ntweaks required due to its poor CSS support.\n-------------------------------------------------*/\n\n* html table, * html select, * html input { font-size: 100%; }\n* html hr { margin: 0; }\n* html span.corners-top, * html span.corners-bottom { background-image: url("{T_THEME_PATH}/images/corners_left.gif"); }\n* html span.corners-top span, * html span.corners-bottom span { background-image: url("{T_THEME_PATH}/images/corners_right.gif"); }\n\ntable.table1 {\n	width: 99%;		/* IE < 6 browsers */\n	/* Tantek hack */\n	voice-family: "\\"}\\"";\n	voice-family: inherit;\n	width: 100%;\n}\nhtml>body table.table1 { width: 100%; }	/* Reset 100% for opera */\n\n* html ul.topiclist li { position: relative; }\n* html .postbody h3 img { vertical-align: middle; }\n\n/* Form styles */\nhtml>body dd label input { vertical-align: text-bottom; }	/* Align checkboxes/radio buttons nicely */\n\n* html input.button1, * html input.button2 {\n	padding-bottom: 0;\n	margin-bottom: 1px;\n}\n\n/* Misc layout styles */\n* html .column1, * html .column2 { width: 45%; }\n\n/* Nice method for clearing floated blocks without having to insert any extra markup (like spacer above)\n   From http://www.positioniseverything.net/easyclearing.html \n#tabs:after, #minitabs:after, .post:after, .navbar:after, fieldset dl:after, ul.topiclist dl:after, ul.linklist:after, dl.polls:after {\n	content: "."; \n	display: block; \n	height: 0; \n	clear: both; \n	visibility: hidden;\n}*/\n\n.clearfix, #tabs, #minitabs, fieldset dl, ul.topiclist dl, dl.polls {\n	height: 1%;\n	overflow: hidden;\n}\n\n/* viewtopic fix */\n* html .post {\n	height: 25%;\n	overflow: hidden;\n}\n\n/* navbar fix */\n* html .clearfix, * html .navbar, ul.linklist {\n	height: 4%;\n	overflow: hidden;\n}\n\n/* Simple fix so forum and topic lists always have a min-height set, even in IE6\n	From http://www.dustindiaz.com/min-height-fast-hack */\ndl.icon {\n	min-height: 35px;\n	height: auto !important;\n	height: 35px;\n}\n\n* html li.row dl.icon dt {\n	height: 35px;\n	overflow: visible;\n}\n\n* html #search-box {\n	width: 25%;\n}\n\n/* Correctly clear floating for details on profile view */\n*:first-child+html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n* html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n/* Headerbar height fix for IE7 and below */\n* html #site-description p {\n	margin-bottom: 1.0em;\n}\n\n*:first-child+html #site-description p {\n	margin-bottom: 1.0em;\n}\n\n/* #minitabs fix for IE */\n.tabs-container {\n	zoom: 1;\n}\n\n#minitabs {\n	white-space: nowrap;\n	*min-width: 50%;\n}\n/*\n--------------------------------------------------------------\nColours and backgrounds for common.css\n-------------------------------------------------------------- */\n\nhtml, body {\n	color: #536482;\n	background-color: #FFFFFF;\n}\n\nh1 {\n	color: #FFFFFF;\n}\n\nh2 {\n	color: #28313F;\n}\n\nh3 {\n	border-bottom-color: #CCCCCC;\n	color: #115098;\n}\n\nhr {\n	border-color: #FFFFFF;\n	border-top-color: #CCCCCC;\n}\n\nhr.dashed {\n	border-top-color: #CCCCCC;\n}\n\n/* Search box\n--------------------------------------------- */\n\n#search-box {\n	color: #FFFFFF;\n}\n\n#search-box #keywords {\n	background-color: #FFF;\n}\n\n#search-box input {\n	border-color: #0075B0;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background-color: #12A3EB;\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\n	color: #FFFFFF;\n}\n\n.navbar {\n	background-color: #cadceb;\n}\n\n.forabg {\n	background-color: #0076b1;\n	background-image: url("{T_THEME_PATH}/images/bg_list.gif");\n}\n\n.forumbg {\n	background-color: #12A3EB;\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\n}\n\n.panel {\n	background-color: #ECF1F3;\n	color: #28313F;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #ECF3F7; }\n.bg2	{ background-color: #e1ebf2; }\n.bg3	{ background-color: #cadceb; }\n\n.ucprowbg {\n	background-color: #DCDEE2;\n}\n\n.fieldsbg {\n	background-color: #E7E8EA;\n}\n\nspan.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\nspan.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\n/* Horizontal lists\n----------------------------------------*/\n\nul.navlinks {\n	border-bottom-color: #FFFFFF;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 thead th {\n	color: #FFFFFF;\n}\n\ntable.table1 tbody tr {\n	border-color: #BFC1CF;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #CFE1F6;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #536482;\n}\n\ntable.table1 tbody td {\n	border-top-color: #FAFAFA;\n}\n\ntable.table1 tbody th {\n	border-bottom-color: #000000;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\ntable.info tbody th {\n	color: #000000;\n}\n\n/* Misc layout styles\n---------------------------------------- */\ndl.details dt {\n	color: #000000;\n}\n\ndl.details dd {\n	color: #536482;\n}\n\n.sep {\n	color: #1198D9;\n}\n\n/* Pagination\n---------------------------------------- */\n\n.pagination span strong {\n	color: #FFFFFF;\n	background-color: #4692BF;\n	border-color: #4692BF;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited {\n	color: #5C758C;\n	background-color: #ECEDEE;\n	border-color: #B4BAC0;\n}\n\n.pagination span a:hover {\n	border-color: #368AD2;\n	background-color: #368AD2;\n	color: #FFF;\n}\n\n.pagination span a:active {\n	color: #5C758C;\n	background-color: #ECEDEE;\n	border-color: #B4BAC0;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	background-image: url("{T_THEME_PATH}/images/icon_pages.gif");\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #368AD2;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n\n.copyright {\n	color: #555555;\n}\n\n.error {\n	color: #BC2A4D;\n}\n\n.reported {\n	background-color: #F7ECEF;\n}\n\nli.reported:hover {\n	background-color: #ECD5D8 !important;\n}\n.sticky, .announce {\n	/* you can add a background for stickies and announcements*/\n}\n\ndiv.rules {\n	background-color: #ECD5D8;\n	color: #BC2A4D;\n}\n\np.rules {\n	background-color: #ECD5D8;\n	background-image: none;\n}\n\n/*\n--------------------------------------------------------------\nColours and backgrounds for links.css\n-------------------------------------------------------------- */\n\na:link	{ color: #105289; }\na:visited	{ color: #105289; }\na:hover	{ color: #D31141; }\na:active	{ color: #368AD2; }\n\n/* Links on gradient backgrounds */\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\n	color: #FFFFFF;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\n	color: #A8D8FF;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\n	color: #C8E6FF;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	color: #105289;\n}\n\n/* a.forumtitle:visited { color: #105289; } */\n\na.forumtitle:hover {\n	color: #BC2A4D;\n}\n\na.forumtitle:active {\n	color: #105289;\n}\n\na.topictitle {\n	color: #105289;\n}\n\n/* a.topictitle:visited { color: #368AD2; } */\n\na.topictitle:hover {\n	color: #BC2A4D;\n}\n\na.topictitle:active {\n	color: #105289;\n}\n\n/* Post body links */\n.postlink {\n	color: #368AD2;\n	border-bottom-color: #368AD2;\n}\n\n.postlink:visited {\n	color: #5D8FBD;\n	border-bottom-color: #5D8FBD;\n}\n\n.postlink:active {\n	color: #368AD2;\n}\n\n.postlink:hover {\n	background-color: #D0E4F6;\n	color: #0D4473;\n}\n\n.signature a, .signature a:visited, .signature a:hover, .signature a:active {\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:visited, .postprofile dt.author a {\n	color: #105289;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	color: #D31141;\n}\n\n.postprofile a:active {\n	color: #105289;\n}\n\n/* Profile searchresults */\n.search .postprofile a {\n	color: #105289;\n}\n\n.search .postprofile a:hover {\n	color: #D31141;\n}\n\n/* Back to top of page */\na.top {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\na.top2 {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\n/* Arrow links  */\na.up		{ background-image: url("{T_THEME_PATH}/images/arrow_up.gif"); }\na.down		{ background-image: url("{T_THEME_PATH}/images/arrow_down.gif"); }\na.left		{ background-image: url("{T_THEME_PATH}/images/arrow_left.gif"); }\na.right		{ background-image: url("{T_THEME_PATH}/images/arrow_right.gif"); }\n\na.up:hover {\n	background-color: transparent;\n}\n\na.left:hover {\n	color: #368AD2;\n}\n\na.right:hover {\n	color: #368AD2;\n}\n\n\n/*\n--------------------------------------------------------------\nColours and backgrounds for content.css\n-------------------------------------------------------------- */\n\nul.forums {\n	background-color: #eef5f9;\n	background-image: url("{T_THEME_PATH}/images/gradient.gif");\n}\n\nul.topiclist li {\n	color: #4C5D77;\n}\n\nul.topiclist dd {\n	border-left-color: #FFFFFF;\n}\n\n.rtl ul.topiclist dd {\n	border-right-color: #fff;\n	border-left-color: transparent;\n}\n\nul.topiclist li.row dt a.subforum.read {\n	background-image: url("{IMG_SUBFORUM_READ_SRC}");\n}\n\nul.topiclist li.row dt a.subforum.unread {\n	background-image: url("{IMG_SUBFORUM_UNREAD_SRC}");\n}\n\nli.row {\n	border-top-color:  #FFFFFF;\n	border-bottom-color: #00608F;\n}\n\nli.row strong {\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #F6F4D0;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\n.rtl li.row:hover dd {\n	border-right-color: #CCCCCC;\n	border-left-color: transparent;\n}\n\nli.header dt, li.header dd {\n	color: #FFFFFF;\n}\n\n/* Forum list column styles */\nul.topiclist dd.searchextra {\n	color: #333333;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	color: #333333;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	color: #333333;\n}\n\n.content h2, .panel h2 {\n	color: #115098;\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.faq dt {\n	color: #333333;\n}\n\n.posthilit {\n	background-color: #F3BFCC;\n	color: #BC2A4D;\n}\n\n/* Post signature */\n.signature {\n	border-top-color: #CCCCCC;\n}\n\n/* Post noticies */\n.notice {\n	border-top-color:  #CCCCCC;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background-color: #EBEADD;\n	background-image: url("{T_THEME_PATH}/images/quote.gif");\n	border-color:#DBDBCE;\n}\n\n.rtl blockquote {\n	background-image: url("{T_THEME_PATH}/images/quote_rtl.gif");\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color:#EFEED9;\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #EBEADD;\n}\n\n/* Code block */\ndl.codebox {\n	background-color: #FFFFFF;\n	border-color: #C9D2D8;\n}\n\ndl.codebox dt {\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.codebox code {\n	color: #2E8B57;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #FF8000; }\n.syntaxdefault	{ color: #0000BB; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #007700; }\n.syntaxstring	{ color: #DD0000; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	background-color: #FFFFFF;\n	border-color:  #C9D2D8;\n}\n\n.pm-message .attachbox {\n	background-color: #F2F3F3;\n}\n\n.attachbox dd {\n	border-top-color: #C9D2D8;\n}\n\n.attachbox p {\n	color: #666666;\n}\n\n.attachbox p.stats {\n	color: #666666;\n}\n\n.attach-image img {\n	border-color: #999999;\n}\n\n/* Inline image thumbnails */\n\ndl.file dd {\n	color: #666666;\n}\n\ndl.thumbnail img {\n	border-color: #666666;\n	background-color: #FFFFFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border-color: #368AD2;\n}\n\n/* Post poll styles\n----------------------------------------*/\n\nfieldset.polls dl {\n	border-top-color: #DCDEE2;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	color: #000000;\n}\n\nfieldset.polls dd div {\n	color: #FFFFFF;\n}\n\n.rtl .pollbar1, .rtl .pollbar2, .rtl .pollbar3, .rtl .pollbar4, .rtl .pollbar5 {\n	border-right-color: transparent;\n}\n\n.pollbar1 {\n	background-color: #AA2346;\n	border-bottom-color: #74162C;\n	border-right-color: #74162C;\n}\n\n.rtl .pollbar1 {\n	border-left-color: #74162C;\n}\n\n.pollbar2 {\n	background-color: #BE1E4A;\n	border-bottom-color: #8C1C38;\n	border-right-color: #8C1C38;\n}\n\n.rtl .pollbar2 {\n	border-left-color: #8C1C38;\n}\n\n.pollbar3 {\n	background-color: #D11A4E;\n	border-bottom-color: #AA2346;\n	border-right-color: #AA2346;\n}\n\n.rtl .pollbar3 {\n	border-left-color: #AA2346;\n}\n\n.pollbar4 {\n	background-color: #E41653;\n	border-bottom-color: #BE1E4A;\n	border-right-color: #BE1E4A;\n}\n\n.rtl .pollbar4 {\n	border-left-color: #BE1E4A;\n}\n\n.pollbar5 {\n	background-color: #F81157;\n	border-bottom-color: #D11A4E;\n	border-right-color: #D11A4E;\n}\n\n.rtl .pollbar5 {\n	border-left-color: #D11A4E;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	color: #666666;\n	border-left-color: #FFFFFF;\n}\n\n.rtl .postprofile {\n	border-right-color: #FFFFFF;\n	border-left-color: transparent;\n}\n\n.pm .postprofile {\n	border-left-color: #DDDDDD;\n}\n\n.rtl .pm .postprofile {\n	border-right-color: #DDDDDD;\n	border-left-color: transparent;\n}\n\n.postprofile strong {\n	color: #000000;\n}\n\n.online {\n	background-image: url("{IMG_ICON_USER_ONLINE_SRC}");\n}\n\n/*\n--------------------------------------------------------------\nColours and backgrounds for buttons.css\n-------------------------------------------------------------- */\n\n/* Big button images */\n.reply-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_REPLY_SRC}"); }\n.post-icon span		{ background-image: url("{IMG_BUTTON_TOPIC_NEW_SRC}"); }\n.locked-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_LOCKED_SRC}"); }\n.pmreply-icon span	{ background-image: url("{IMG_BUTTON_PM_REPLY_SRC}"); }\n.newpm-icon span	{ background-image: url("{IMG_BUTTON_PM_NEW_SRC}"); }\n.forwardpm-icon span	{ background-image: url("{IMG_BUTTON_PM_FORWARD_SRC}"); }\n\na.print {\n	background-image: url("{T_THEME_PATH}/images/icon_print.gif");\n}\n\na.sendemail {\n	background-image: url("{T_THEME_PATH}/images/icon_sendemail.gif");\n}\n\na.fontsize {\n	background-image: url("{T_THEME_PATH}/images/icon_fontsize.gif");\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\n.icon-faq						{ background-image: url("{T_THEME_PATH}/images/icon_faq.gif"); }\n.icon-members					{ background-image: url("{T_THEME_PATH}/images/icon_members.gif"); }\n.icon-home						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\n.icon-ucp						{ background-image: url("{T_THEME_PATH}/images/icon_ucp.gif"); }\n.icon-register					{ background-image: url("{T_THEME_PATH}/images/icon_register.gif"); }\n.icon-logout					{ background-image: url("{T_THEME_PATH}/images/icon_logout.gif"); }\n.icon-bookmark					{ background-image: url("{T_THEME_PATH}/images/icon_bookmark.gif"); }\n.icon-bump						{ background-image: url("{T_THEME_PATH}/images/icon_bump.gif"); }\n.icon-subscribe					{ background-image: url("{T_THEME_PATH}/images/icon_subscribe.gif"); }\n.icon-unsubscribe				{ background-image: url("{T_THEME_PATH}/images/icon_unsubscribe.gif"); }\n.icon-pages						{ background-image: url("{T_THEME_PATH}/images/icon_pages.gif"); }\n.icon-search					{ background-image: url("{T_THEME_PATH}/images/icon_search.gif"); }\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background-image: url("{IMG_ICON_CONTACT_EMAIL_SRC}"); }\n.aim-icon, .aim-icon a			{ background-image: url("{IMG_ICON_CONTACT_AIM_SRC}"); }\n.yahoo-icon, .yahoo-icon a		{ background-image: url("{IMG_ICON_CONTACT_YAHOO_SRC}"); }\n.web-icon, .web-icon a			{ background-image: url("{IMG_ICON_CONTACT_WWW_SRC}"); }\n.msnm-icon, .msnm-icon a			{ background-image: url("{IMG_ICON_CONTACT_MSNM_SRC}"); }\n.icq-icon, .icq-icon a			{ background-image: url("{IMG_ICON_CONTACT_ICQ_SRC}"); }\n.jabber-icon, .jabber-icon a		{ background-image: url("{IMG_ICON_CONTACT_JABBER_SRC}"); }\n.pm-icon, .pm-icon a				{ background-image: url("{IMG_ICON_CONTACT_PM_SRC}"); }\n.quote-icon, .quote-icon a		{ background-image: url("{IMG_ICON_POST_QUOTE_SRC}"); }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background-image: url("{IMG_ICON_POST_REPORT_SRC}"); }\n.edit-icon, .edit-icon a			{ background-image: url("{IMG_ICON_POST_EDIT_SRC}"); }\n.delete-icon, .delete-icon a		{ background-image: url("{IMG_ICON_POST_DELETE_SRC}"); }\n.info-icon, .info-icon a			{ background-image: url("{IMG_ICON_POST_INFO_SRC}"); }\n.warn-icon, .warn-icon a			{ background-image: url("{IMG_ICON_USER_WARN_SRC}"); } /* Need updated warn icon */\n\n/*\n--------------------------------------------------------------\nColours and backgrounds for cp.css\n-------------------------------------------------------------- */\n\n/* Main CP box\n----------------------------------------*/\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #A4B3BF;\n}\n\n#cp-main .panel li.row {\n	border-bottom-color: #B5C1CB;\n	border-top-color: #F9F9F9;\n}\n\nul.cplist {\n	border-top-color: #B5C1CB;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	border-bottom-color: #333333;\n}\n\n#cp-main .pm-message {\n	border-color: #DBDEE2;\n	background-color: #FFFFFF;\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs a {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs1.gif");\n}\n\n#tabs a span {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs2.gif");\n	color: #536482;\n}\n\n#tabs a:hover span {\n	color: #BC2A4D;\n}\n\n#tabs .activetab a {\n	border-bottom-color: #CADCEB;\n}\n\n#tabs .activetab a span {\n	color: #333333;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs li {\n	background-color: #E1EBF2;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n\n/* Link styles for the sub-section links */\n#navigation a {\n	color: #333;\n	background-color: #B2C2CF;\n	background-image: url("{T_THEME_PATH}/images/bg_menu.gif");\n}\n\n.rtl #navigation a {\n	background-image: url("{T_THEME_PATH}/images/bg_menu_rtl.gif");\n	background-position: 0 100%;\n}\n\n#navigation a:hover {\n	background-image: none;\n	background-color: #aabac6;\n	color: #BC2A4D;\n}\n\n#navigation #active-subsection a {\n	color: #D31141;\n	background-color: #F9F9F9;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #D31141;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #F9F9F9;\n}\n\n#cp-main .pm {\n	background-color: #FFFFFF;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #eef5f9;\n}\n\ndl.mini dt {\n	color: #425067;\n}\n\n/* PM Styles\n----------------------------------------*/\n/* PM Message history */\n.current {\n	color: #000000 !important;\n}\n\n/* PM marking colours */\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #BC2A4D;\n	border-right-color: #BC2A4D;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	border-color: #FF6600;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	border-color: #A9B8C2;\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	border-color: #5D8FBD;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	border-color: #000000;\n}\n\n/* Avatar gallery */\n#gallery label {\n	background-color: #FFFFFF;\n	border-color: #CCC;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n\n/*\n--------------------------------------------------------------\nColours and backgrounds for forms.css\n-------------------------------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nselect {\n	border-color: #666666;\n	background-color: #FAFAFA;\n	color: #000;\n}\n\nlabel {\n	color: #425067;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\ndd label {\n	color: #333;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login input.inputbox {\n	background-color: #F2F3F3;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n#message-box textarea {\n	color: #333333;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF;\n	border-color: #B4BAC0;\n	color: #333333;\n}\n\n.inputbox:hover {\n	border-color: #11A3EA;\n}\n\n.inputbox:focus {\n	border-color: #11A3EA;\n	color: #0F4987;\n}\n\n/* Form button styles\n---------------------------------------- */\n\na.button1, input.button1, input.button3, a.button2, input.button2 {\n	color: #000;\n	background-color: #FAFAFA;\n	background-image: url("{T_THEME_PATH}/images/bg_button.gif");\n}\n\na.button1, input.button1 {\n	border-color: #666666;\n}\n\ninput.button3 {\n	background-image: none;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border-color: #666666;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	color: #000000;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border-color: #BC2A4D;\n	color: #BC2A4D;\n}\n\ninput.search {\n	background-image: url("{T_THEME_PATH}/images/icon_textbox_search.gif");\n}\n\ninput.disabled {\n	color: #666666;\n}\n');
INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(2, 'BBOOTS', '© SiteSplat.com (c) 2013 - 2015', 'BBOOTS', 1, 1404481984, '/*  phpBB3 Stylesheet\r\n    --------------------------------------------------------------\r\n	Style name:			BBOOTS\r\n	Developer:	        ThemeSplat ( http://www.sitesplat.com/phpBB3 )\r\n	Version:		    3.0.2\r\n    --------------------------------------------------------------\r\n*/\r\n\r\n/*!\n * Bootstrap v3.3.1 (http://getbootstrap.com)\n * Copyright 2011-2014 Twitter, Inc.\n * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)\n *//*! normalize.css v3.0.2 | MIT License | git.io/normalize */html{font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background-color:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:700}dfn{font-style:italic}h1{margin:.67em 0;font-size:2em}mark{color:#000;background:#ff0}small{font-size:80%}sub,sup{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sup{top:-.5em}sub{bottom:-.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{height:0;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace,monospace;font-size:1em}button,input,optgroup,select,textarea{margin:0;font:inherit;color:inherit}button{overflow:visible}button,select{text-transform:none}button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{padding:0;border:0}input{line-height:normal}input[type=checkbox],input[type=radio]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type=number]::-webkit-inner-spin-button,input[type=number]::-webkit-outer-spin-button{height:auto}input[type=search]{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;-webkit-appearance:textfield}input[type=search]::-webkit-search-cancel-button,input[type=search]::-webkit-search-decoration{-webkit-appearance:none}fieldset{padding:.35em .625em .75em;margin:0 2px;border:1px solid silver}legend{padding:0;border:0}textarea{overflow:auto}optgroup{font-weight:700}table{border-spacing:0;border-collapse:collapse}td,th{padding:0}/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */@media print{*,:before,:after{color:#000!important;text-shadow:none!important;background:transparent!important;-webkit-box-shadow:none!important;box-shadow:none!important}a,a:visited{text-decoration:underline}a[href]:after{content:" (" attr(href) ")"}abbr[title]:after{content:" (" attr(title) ")"}a[href^="#"]:after,a[href^="javascript:"]:after{content:""}pre,blockquote{border:1px solid #999;page-break-inside:avoid}thead{display:table-header-group}tr,img{page-break-inside:avoid}img{max-width:100%!important}p,h2,h3{orphans:3;widows:3}h2,h3{page-break-after:avoid}select{background:#fff!important}.navbar{display:none}.btn>.caret,.dropup>.btn>.caret{border-top-color:#000!important}.label{border:1px solid #000}.table{border-collapse:collapse!important}.table td,.table th{background-color:#fff!important}.table-bordered th,.table-bordered td{border:1px solid #ddd!important}}@font-face{font-family:''Glyphicons Halflings'';src:url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.eot");src:url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix") format(''embedded-opentype''),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.woff") format(''woff''),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.ttf") format(''truetype''),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular") format(''svg'')}.glyphicon{position:relative;top:1px;display:inline-block;font-family:''Glyphicons Halflings'';font-style:normal;font-weight:400;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.glyphicon-asterisk:before{content:"\\2a"}.glyphicon-plus:before{content:"\\2b"}.glyphicon-euro:before,.glyphicon-eur:before{content:"\\20ac"}.glyphicon-minus:before{content:"\\2212"}.glyphicon-cloud:before{content:"\\2601"}.glyphicon-envelope:before{content:"\\2709"}.glyphicon-pencil:before{content:"\\270f"}.glyphicon-glass:before{content:"\\e001"}.glyphicon-music:before{content:"\\e002"}.glyphicon-search:before{content:"\\e003"}.glyphicon-heart:before{content:"\\e005"}.glyphicon-star:before{content:"\\e006"}.glyphicon-star-empty:before{content:"\\e007"}.glyphicon-user:before{content:"\\e008"}.glyphicon-film:before{content:"\\e009"}.glyphicon-th-large:before{content:"\\e010"}.glyphicon-th:before{content:"\\e011"}.glyphicon-th-list:before{content:"\\e012"}.glyphicon-ok:before{content:"\\e013"}.glyphicon-remove:before{content:"\\e014"}.glyphicon-zoom-in:before{content:"\\e015"}.glyphicon-zoom-out:before{content:"\\e016"}.glyphicon-off:before{content:"\\e017"}.glyphicon-signal:before{content:"\\e018"}.glyphicon-cog:before{content:"\\e019"}.glyphicon-trash:before{content:"\\e020"}.glyphicon-home:before{content:"\\e021"}.glyphicon-file:before{content:"\\e022"}.glyphicon-time:before{content:"\\e023"}.glyphicon-road:before{content:"\\e024"}.glyphicon-download-alt:before{content:"\\e025"}.glyphicon-download:before{content:"\\e026"}.glyphicon-upload:before{content:"\\e027"}.glyphicon-inbox:before{content:"\\e028"}.glyphicon-play-circle:before{content:"\\e029"}.glyphicon-repeat:before{content:"\\e030"}.glyphicon-refresh:before{content:"\\e031"}.glyphicon-list-alt:before{content:"\\e032"}.glyphicon-lock:before{content:"\\e033"}.glyphicon-flag:before{content:"\\e034"}.glyphicon-headphones:before{content:"\\e035"}.glyphicon-volume-off:before{content:"\\e036"}.glyphicon-volume-down:before{content:"\\e037"}.glyphicon-volume-up:before{content:"\\e038"}.glyphicon-qrcode:before{content:"\\e039"}.glyphicon-barcode:before{content:"\\e040"}.glyphicon-tag:before{content:"\\e041"}.glyphicon-tags:before{content:"\\e042"}.glyphicon-book:before{content:"\\e043"}.glyphicon-bookmark:before{content:"\\e044"}.glyphicon-print:before{content:"\\e045"}.glyphicon-camera:before{content:"\\e046"}.glyphicon-font:before{content:"\\e047"}.glyphicon-bold:before{content:"\\e048"}.glyphicon-italic:before{content:"\\e049"}.glyphicon-text-height:before{content:"\\e050"}.glyphicon-text-width:before{content:"\\e051"}.glyphicon-align-left:before{content:"\\e052"}.glyphicon-align-center:before{content:"\\e053"}.glyphicon-align-right:before{content:"\\e054"}.glyphicon-align-justify:before{content:"\\e055"}.glyphicon-list:before{content:"\\e056"}.glyphicon-indent-left:before{content:"\\e057"}.glyphicon-indent-right:before{content:"\\e058"}.glyphicon-facetime-video:before{content:"\\e059"}.glyphicon-picture:before{content:"\\e060"}.glyphicon-map-marker:before{content:"\\e062"}.glyphicon-adjust:before{content:"\\e063"}.glyphicon-tint:before{content:"\\e064"}.glyphicon-edit:before{content:"\\e065"}.glyphicon-share:before{content:"\\e066"}.glyphicon-check:before{content:"\\e067"}.glyphicon-move:before{content:"\\e068"}.glyphicon-step-backward:before{content:"\\e069"}.glyphicon-fast-backward:before{content:"\\e070"}.glyphicon-backward:before{content:"\\e071"}.glyphicon-play:before{content:"\\e072"}.glyphicon-pause:before{content:"\\e073"}.glyphicon-stop:before{content:"\\e074"}.glyphicon-forward:before{content:"\\e075"}.glyphicon-fast-forward:before{content:"\\e076"}.glyphicon-step-forward:before{content:"\\e077"}.glyphicon-eject:before{content:"\\e078"}.glyphicon-chevron-left:before{content:"\\e079"}.glyphicon-chevron-right:before{content:"\\e080"}.glyphicon-plus-sign:before{content:"\\e081"}.glyphicon-minus-sign:before{content:"\\e082"}.glyphicon-remove-sign:before{content:"\\e083"}.glyphicon-ok-sign:before{content:"\\e084"}.glyphicon-question-sign:before{content:"\\e085"}.glyphicon-info-sign:before{content:"\\e086"}.glyphicon-screenshot:before{content:"\\e087"}.glyphicon-remove-circle:before{content:"\\e088"}.glyphicon-ok-circle:before{content:"\\e089"}.glyphicon-ban-circle:before{content:"\\e090"}.glyphicon-arrow-left:before{content:"\\e091"}.glyphicon-arrow-right:before{content:"\\e092"}.glyphicon-arrow-up:before{content:"\\e093"}.glyphicon-arrow-down:before{content:"\\e094"}.glyphicon-share-alt:before{content:"\\e095"}.glyphicon-resize-full:before{content:"\\e096"}.glyphicon-resize-small:before{content:"\\e097"}.glyphicon-exclamation-sign:before{content:"\\e101"}.glyphicon-gift:before{content:"\\e102"}.glyphicon-leaf:before{content:"\\e103"}.glyphicon-fire:before{content:"\\e104"}.glyphicon-eye-open:before{content:"\\e105"}.glyphicon-eye-close:before{content:"\\e106"}.glyphicon-warning-sign:before{content:"\\e107"}.glyphicon-plane:before{content:"\\e108"}.glyphicon-calendar:before{content:"\\e109"}.glyphicon-random:before{content:"\\e110"}.glyphicon-comment:before{content:"\\e111"}.glyphicon-magnet:before{content:"\\e112"}.glyphicon-chevron-up:before{content:"\\e113"}.glyphicon-chevron-down:before{content:"\\e114"}.glyphicon-retweet:before{content:"\\e115"}.glyphicon-shopping-cart:before{content:"\\e116"}.glyphicon-folder-close:before{content:"\\e117"}.glyphicon-folder-open:before{content:"\\e118"}.glyphicon-resize-vertical:before{content:"\\e119"}.glyphicon-resize-horizontal:before{content:"\\e120"}.glyphicon-hdd:before{content:"\\e121"}.glyphicon-bullhorn:before{content:"\\e122"}.glyphicon-bell:before{content:"\\e123"}.glyphicon-certificate:before{content:"\\e124"}.glyphicon-thumbs-up:before{content:"\\e125"}.glyphicon-thumbs-down:before{content:"\\e126"}.glyphicon-hand-right:before{content:"\\e127"}.glyphicon-hand-left:before{content:"\\e128"}.glyphicon-hand-up:before{content:"\\e129"}.glyphicon-hand-down:before{content:"\\e130"}.glyphicon-circle-arrow-right:before{content:"\\e131"}.glyphicon-circle-arrow-left:before{content:"\\e132"}.glyphicon-circle-arrow-up:before{content:"\\e133"}.glyphicon-circle-arrow-down:before{content:"\\e134"}.glyphicon-globe:before{content:"\\e135"}.glyphicon-wrench:before{content:"\\e136"}.glyphicon-tasks:before{content:"\\e137"}.glyphicon-filter:before{content:"\\e138"}.glyphicon-briefcase:before{content:"\\e139"}.glyphicon-fullscreen:before{content:"\\e140"}.glyphicon-dashboard:before{content:"\\e141"}.glyphicon-paperclip:before{content:"\\e142"}.glyphicon-heart-empty:before{content:"\\e143"}.glyphicon-link:before{content:"\\e144"}.glyphicon-phone:before{content:"\\e145"}.glyphicon-pushpin:before{content:"\\e146"}.glyphicon-usd:before{content:"\\e148"}.glyphicon-gbp:before{content:"\\e149"}.glyphicon-sort:before{content:"\\e150"}.glyphicon-sort-by-alphabet:before{content:"\\e151"}.glyphicon-sort-by-alphabet-alt:before{content:"\\e152"}.glyphicon-sort-by-order:before{content:"\\e153"}.glyphicon-sort-by-order-alt:before{content:"\\e154"}.glyphicon-sort-by-attributes:before{content:"\\e155"}.glyphicon-sort-by-attributes-alt:before{content:"\\e156"}.glyphicon-unchecked:before{content:"\\e157"}.glyphicon-expand:before{content:"\\e158"}.glyphicon-collapse-down:before{content:"\\e159"}.glyphicon-collapse-up:before{content:"\\e160"}.glyphicon-log-in:before{content:"\\e161"}.glyphicon-flash:before{content:"\\e162"}.glyphicon-log-out:before{content:"\\e163"}.glyphicon-new-window:before{content:"\\e164"}.glyphicon-record:before{content:"\\e165"}.glyphicon-save:before{content:"\\e166"}.glyphicon-open:before{content:"\\e167"}.glyphicon-saved:before{content:"\\e168"}.glyphicon-import:before{content:"\\e169"}.glyphicon-export:before{content:"\\e170"}.glyphicon-send:before{content:"\\e171"}.glyphicon-floppy-disk:before{content:"\\e172"}.glyphicon-floppy-saved:before{content:"\\e173"}.glyphicon-floppy-remove:before{content:"\\e174"}.glyphicon-floppy-save:before{content:"\\e175"}.glyphicon-floppy-open:before{content:"\\e176"}.glyphicon-credit-card:before{content:"\\e177"}.glyphicon-transfer:before{content:"\\e178"}.glyphicon-cutlery:before{content:"\\e179"}.glyphicon-header:before{content:"\\e180"}.glyphicon-compressed:before{content:"\\e181"}.glyphicon-earphone:before{content:"\\e182"}.glyphicon-phone-alt:before{content:"\\e183"}.glyphicon-tower:before{content:"\\e184"}.glyphicon-stats:before{content:"\\e185"}.glyphicon-sd-video:before{content:"\\e186"}.glyphicon-hd-video:before{content:"\\e187"}.glyphicon-subtitles:before{content:"\\e188"}.glyphicon-sound-stereo:before{content:"\\e189"}.glyphicon-sound-dolby:before{content:"\\e190"}.glyphicon-sound-5-1:before{content:"\\e191"}.glyphicon-sound-6-1:before{content:"\\e192"}.glyphicon-sound-7-1:before{content:"\\e193"}.glyphicon-copyright-mark:before{content:"\\e194"}.glyphicon-registration-mark:before{content:"\\e195"}.glyphicon-cloud-download:before{content:"\\e197"}.glyphicon-cloud-upload:before{content:"\\e198"}.glyphicon-tree-conifer:before{content:"\\e199"}.glyphicon-tree-deciduous:before{content:"\\e200"}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}:before,:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}html{font-size:10px;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}input,button,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}a{color:#337ab7;text-decoration:none}a:hover,a:focus{color:#23527c;text-decoration:underline}a:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}figure{margin:0}img{vertical-align:middle}.img-responsive,.thumbnail>img,.thumbnail a>img,.carousel-inner>.item>img,.carousel-inner>.item>a>img{display:block;max-width:100%;height:auto}.img-rounded{border-radius:6px}.img-thumbnail{display:inline-block;max-width:100%;height:auto;padding:4px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;transition:all .2s ease-in-out}.img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}h1,h2,h3,h4,h5,h6,.h1,.h2,.h3,.h4,.h5,.h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h1 small,h2 small,h3 small,h4 small,h5 small,h6 small,.h1 small,.h2 small,.h3 small,.h4 small,.h5 small,.h6 small,h1 .small,h2 .small,h3 .small,h4 .small,h5 .small,h6 .small,.h1 .small,.h2 .small,.h3 .small,.h4 .small,.h5 .small,.h6 .small{font-weight:400;line-height:1;color:#777}h1,.h1,h2,.h2,h3,.h3{margin-top:20px;margin-bottom:10px}h1 small,.h1 small,h2 small,.h2 small,h3 small,.h3 small,h1 .small,.h1 .small,h2 .small,.h2 .small,h3 .small,.h3 .small{font-size:65%}h4,.h4,h5,.h5,h6,.h6{margin-top:10px;margin-bottom:10px}h4 small,.h4 small,h5 small,.h5 small,h6 small,.h6 small,h4 .small,.h4 .small,h5 .small,.h5 .small,h6 .small,.h6 .small{font-size:75%}h1,.h1{font-size:36px}h2,.h2{font-size:30px}h3,.h3{font-size:24px}h4,.h4{font-size:18px}h5,.h5{font-size:14px}h6,.h6{font-size:12px}p{margin:0 0 10px}.lead{margin-bottom:20px;font-size:16px;font-weight:300;line-height:1.4}@media (min-width:768px){.lead{font-size:21px}}small,.small{font-size:85%}mark,.mark{padding:.2em;background-color:#fcf8e3}.text-left{text-align:left}.text-right{text-align:right}.text-center{text-align:center}.text-justify{text-align:justify}.text-nowrap{white-space:nowrap}.text-lowercase{text-transform:lowercase}.text-uppercase{text-transform:uppercase}.text-capitalize{text-transform:capitalize}.text-muted{color:#777}.text-primary{color:#337ab7}a.text-primary:hover{color:#286090}.text-success{color:#3c763d}a.text-success:hover{color:#2b542c}.text-info{color:#31708f}a.text-info:hover{color:#245269}.text-warning{color:#8a6d3b}a.text-warning:hover{color:#66512c}.text-danger{color:#a94442}a.text-danger:hover{color:#843534}.bg-primary{color:#fff;background-color:#337ab7}a.bg-primary:hover{background-color:#286090}.bg-success{background-color:#dff0d8}a.bg-success:hover{background-color:#c1e2b3}.bg-info{background-color:#d9edf7}a.bg-info:hover{background-color:#afd9ee}.bg-warning{background-color:#fcf8e3}a.bg-warning:hover{background-color:#f7ecb5}.bg-danger{background-color:#f2dede}a.bg-danger:hover{background-color:#e4b9b9}.page-header{padding-bottom:9px;margin:40px 0 20px;border-bottom:1px solid #eee}ul,ol{margin-top:0;margin-bottom:10px}ul ul,ol ul,ul ol,ol ol{margin-bottom:0}.list-unstyled{padding-left:0;list-style:none}.list-inline{padding-left:0;margin-left:-5px;list-style:none}.list-inline>li{display:inline-block;padding-right:5px;padding-left:5px}dl{margin-top:0;margin-bottom:20px}dt,dd{line-height:1.42857143}dt{font-weight:700}dd{margin-left:0}@media (min-width:768px){.dl-horizontal dt{float:left;width:160px;overflow:hidden;clear:left;text-align:right;text-overflow:ellipsis;white-space:nowrap}.dl-horizontal dd{margin-left:180px}}abbr[title],abbr[data-original-title]{cursor:help;border-bottom:1px dotted #777}.initialism{font-size:90%;text-transform:uppercase}blockquote{padding:10px 20px;margin:0 0 20px;font-size:17.5px;border-left:5px solid #eee}blockquote p:last-child,blockquote ul:last-child,blockquote ol:last-child{margin-bottom:0}blockquote footer,blockquote small,blockquote .small{display:block;font-size:80%;line-height:1.42857143;color:#777}blockquote footer:before,blockquote small:before,blockquote .small:before{content:''\\2014 \\00A0''}.blockquote-reverse,blockquote.pull-right{padding-right:15px;padding-left:0;text-align:right;border-right:5px solid #eee;border-left:0}.blockquote-reverse footer:before,blockquote.pull-right footer:before,.blockquote-reverse small:before,blockquote.pull-right small:before,.blockquote-reverse .small:before,blockquote.pull-right .small:before{content:''''}.blockquote-reverse footer:after,blockquote.pull-right footer:after,.blockquote-reverse small:after,blockquote.pull-right small:after,.blockquote-reverse .small:after,blockquote.pull-right .small:after{content:''\\00A0 \\2014''}address{margin-bottom:20px;font-style:normal;line-height:1.42857143}code,kbd,pre,samp{font-family:Menlo,Monaco,Consolas,"Courier New",monospace}code{padding:2px 4px;font-size:90%;color:#c7254e;background-color:#f9f2f4;border-radius:4px}kbd{padding:2px 4px;font-size:90%;color:#fff;background-color:#333;border-radius:3px;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.25);box-shadow:inset 0 -1px 0 rgba(0,0,0,.25)}kbd kbd{padding:0;font-size:100%;font-weight:700;-webkit-box-shadow:none;box-shadow:none}pre{display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:1.42857143;color:#333;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5;border:1px solid #ccc;border-radius:4px}pre code{padding:0;font-size:inherit;color:inherit;white-space:pre-wrap;background-color:transparent;border-radius:0}.pre-scrollable{max-height:340px;overflow-y:scroll}.container{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:768px){.container{width:750px}}@media (min-width:992px){.container{width:970px}}@media (min-width:1200px){.container{width:1170px}}.container-fluid{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{margin-right:-15px;margin-left:-15px}.col-xs-1,.col-sm-1,.col-md-1,.col-lg-1,.col-xs-2,.col-sm-2,.col-md-2,.col-lg-2,.col-xs-3,.col-sm-3,.col-md-3,.col-lg-3,.col-xs-4,.col-sm-4,.col-md-4,.col-lg-4,.col-xs-5,.col-sm-5,.col-md-5,.col-lg-5,.col-xs-6,.col-sm-6,.col-md-6,.col-lg-6,.col-xs-7,.col-sm-7,.col-md-7,.col-lg-7,.col-xs-8,.col-sm-8,.col-md-8,.col-lg-8,.col-xs-9,.col-sm-9,.col-md-9,.col-lg-9,.col-xs-10,.col-sm-10,.col-md-10,.col-lg-10,.col-xs-11,.col-sm-11,.col-md-11,.col-lg-11,.col-xs-12,.col-sm-12,.col-md-12,.col-lg-12{position:relative;min-height:1px;padding-right:15px;padding-left:15px}.col-xs-1,.col-xs-2,.col-xs-3,.col-xs-4,.col-xs-5,.col-xs-6,.col-xs-7,.col-xs-8,.col-xs-9,.col-xs-10,.col-xs-11,.col-xs-12{float:left}.col-xs-12{width:100%}.col-xs-11{width:91.66666667%}.col-xs-10{width:83.33333333%}.col-xs-9{width:75%}.col-xs-8{width:66.66666667%}.col-xs-7{width:58.33333333%}.col-xs-6{width:50%}.col-xs-5{width:41.66666667%}.col-xs-4{width:33.33333333%}.col-xs-3{width:25%}.col-xs-2{width:16.66666667%}.col-xs-1{width:8.33333333%}.col-xs-pull-12{right:100%}.col-xs-pull-11{right:91.66666667%}.col-xs-pull-10{right:83.33333333%}.col-xs-pull-9{right:75%}.col-xs-pull-8{right:66.66666667%}.col-xs-pull-7{right:58.33333333%}.col-xs-pull-6{right:50%}.col-xs-pull-5{right:41.66666667%}.col-xs-pull-4{right:33.33333333%}.col-xs-pull-3{right:25%}.col-xs-pull-2{right:16.66666667%}.col-xs-pull-1{right:8.33333333%}.col-xs-pull-0{right:auto}.col-xs-push-12{left:100%}.col-xs-push-11{left:91.66666667%}.col-xs-push-10{left:83.33333333%}.col-xs-push-9{left:75%}.col-xs-push-8{left:66.66666667%}.col-xs-push-7{left:58.33333333%}.col-xs-push-6{left:50%}.col-xs-push-5{left:41.66666667%}.col-xs-push-4{left:33.33333333%}.col-xs-push-3{left:25%}.col-xs-push-2{left:16.66666667%}.col-xs-push-1{left:8.33333333%}.col-xs-push-0{left:auto}.col-xs-offset-12{margin-left:100%}.col-xs-offset-11{margin-left:91.66666667%}.col-xs-offset-10{margin-left:83.33333333%}.col-xs-offset-9{margin-left:75%}.col-xs-offset-8{margin-left:66.66666667%}.col-xs-offset-7{margin-left:58.33333333%}.col-xs-offset-6{margin-left:50%}.col-xs-offset-5{margin-left:41.66666667%}.col-xs-offset-4{margin-left:33.33333333%}.col-xs-offset-3{margin-left:25%}.col-xs-offset-2{margin-left:16.66666667%}.col-xs-offset-1{margin-left:8.33333333%}.col-xs-offset-0{margin-left:0}@media (min-width:768px){.col-sm-1,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-10,.col-sm-11,.col-sm-12{float:left}.col-sm-12{width:100%}.col-sm-11{width:91.66666667%}.col-sm-10{width:83.33333333%}.col-sm-9{width:75%}.col-sm-8{width:66.66666667%}.col-sm-7{width:58.33333333%}.col-sm-6{width:50%}.col-sm-5{width:41.66666667%}.col-sm-4{width:33.33333333%}.col-sm-3{width:25%}.col-sm-2{width:16.66666667%}.col-sm-1{width:8.33333333%}.col-sm-pull-12{right:100%}.col-sm-pull-11{right:91.66666667%}.col-sm-pull-10{right:83.33333333%}.col-sm-pull-9{right:75%}.col-sm-pull-8{right:66.66666667%}.col-sm-pull-7{right:58.33333333%}.col-sm-pull-6{right:50%}.col-sm-pull-5{right:41.66666667%}.col-sm-pull-4{right:33.33333333%}.col-sm-pull-3{right:25%}.col-sm-pull-2{right:16.66666667%}.col-sm-pull-1{right:8.33333333%}.col-sm-pull-0{right:auto}.col-sm-push-12{left:100%}.col-sm-push-11{left:91.66666667%}.col-sm-push-10{left:83.33333333%}.col-sm-push-9{left:75%}.col-sm-push-8{left:66.66666667%}.col-sm-push-7{left:58.33333333%}.col-sm-push-6{left:50%}.col-sm-push-5{left:41.66666667%}.col-sm-push-4{left:33.33333333%}.col-sm-push-3{left:25%}.col-sm-push-2{left:16.66666667%}.col-sm-push-1{left:8.33333333%}.col-sm-push-0{left:auto}.col-sm-offset-12{margin-left:100%}.col-sm-offset-11{margin-left:91.66666667%}.col-sm-offset-10{margin-left:83.33333333%}.col-sm-offset-9{margin-left:75%}.col-sm-offset-8{margin-left:66.66666667%}.col-sm-offset-7{margin-left:58.33333333%}.col-sm-offset-6{margin-left:50%}.col-sm-offset-5{margin-left:41.66666667%}.col-sm-offset-4{margin-left:33.33333333%}.col-sm-offset-3{margin-left:25%}.col-sm-offset-2{margin-left:16.66666667%}.col-sm-offset-1{margin-left:8.33333333%}.col-sm-offset-0{margin-left:0}}@media (min-width:992px){.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,.col-md-11,.col-md-12{float:left}.col-md-12{width:100%}.col-md-11{width:91.66666667%}.col-md-10{width:83.33333333%}.col-md-9{width:75%}.col-md-8{width:66.66666667%}.col-md-7{width:58.33333333%}.col-md-6{width:50%}.col-md-5{width:41.66666667%}.col-md-4{width:33.33333333%}.col-md-3{width:25%}.col-md-2{width:16.66666667%}.col-md-1{width:8.33333333%}.col-md-pull-12{right:100%}.col-md-pull-11{right:91.66666667%}.col-md-pull-10{right:83.33333333%}.col-md-pull-9{right:75%}.col-md-pull-8{right:66.66666667%}.col-md-pull-7{right:58.33333333%}.col-md-pull-6{right:50%}.col-md-pull-5{right:41.66666667%}.col-md-pull-4{right:33.33333333%}.col-md-pull-3{right:25%}.col-md-pull-2{right:16.66666667%}.col-md-pull-1{right:8.33333333%}.col-md-pull-0{right:auto}.col-md-push-12{left:100%}.col-md-push-11{left:91.66666667%}.col-md-push-10{left:83.33333333%}.col-md-push-9{left:75%}.col-md-push-8{left:66.66666667%}.col-md-push-7{left:58.33333333%}.col-md-push-6{left:50%}.col-md-push-5{left:41.66666667%}.col-md-push-4{left:33.33333333%}.col-md-push-3{left:25%}.col-md-push-2{left:16.66666667%}.col-md-push-1{left:8.33333333%}.col-md-push-0{left:auto}.col-md-offset-12{margin-left:100%}.col-md-offset-11{margin-left:91.66666667%}.col-md-offset-10{margin-left:83.33333333%}.col-md-offset-9{margin-left:75%}.col-md-offset-8{margin-left:66.66666667%}.col-md-offset-7{margin-left:58.33333333%}.col-md-offset-6{margin-left:50%}.col-md-offset-5{margin-left:41.66666667%}.col-md-offset-4{margin-left:33.33333333%}.col-md-offset-3{margin-left:25%}.col-md-offset-2{margin-left:16.66666667%}.col-md-offset-1{margin-left:8.33333333%}.col-md-offset-0{margin-left:0}}@media (min-width:1200px){.col-lg-1,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-10,.col-lg-11,.col-lg-12{float:left}.col-lg-12{width:100%}.col-lg-11{width:91.66666667%}.col-lg-10{width:83.33333333%}.col-lg-9{width:75%}.col-lg-8{width:66.66666667%}.col-lg-7{width:58.33333333%}.col-lg-6{width:50%}.col-lg-5{width:41.66666667%}.col-lg-4{width:33.33333333%}.col-lg-3{width:25%}.col-lg-2{width:16.66666667%}.col-lg-1{width:8.33333333%}.col-lg-pull-12{right:100%}.col-lg-pull-11{right:91.66666667%}.col-lg-pull-10{right:83.33333333%}.col-lg-pull-9{right:75%}.col-lg-pull-8{right:66.66666667%}.col-lg-pull-7{right:58.33333333%}.col-lg-pull-6{right:50%}.col-lg-pull-5{right:41.66666667%}.col-lg-pull-4{right:33.33333333%}.col-lg-pull-3{right:25%}.col-lg-pull-2{right:16.66666667%}.col-lg-pull-1{right:8.33333333%}.col-lg-pull-0{right:auto}.col-lg-push-12{left:100%}.col-lg-push-11{left:91.66666667%}.col-lg-push-10{left:83.33333333%}.col-lg-push-9{left:75%}.col-lg-push-8{left:66.66666667%}.col-lg-push-7{left:58.33333333%}.col-lg-push-6{left:50%}.col-lg-push-5{left:41.66666667%}.col-lg-push-4{left:33.33333333%}.col-lg-push-3{left:25%}.col-lg-push-2{left:16.66666667%}.col-lg-push-1{left:8.33333333%}.col-lg-push-0{left:auto}.col-lg-offset-12{margin-left:100%}.col-lg-offset-11{margin-left:91.66666667%}.col-lg-offset-10{margin-left:83.33333333%}.col-lg-offset-9{margin-left:75%}.col-lg-offset-8{margin-left:66.66666667%}.col-lg-offset-7{margin-left:58.33333333%}.col-lg-offset-6{margin-left:50%}.col-lg-offset-5{margin-left:41.66666667%}.col-lg-offset-4{margin-left:33.33333333%}.col-lg-offset-3{margin-left:25%}.col-lg-offset-2{margin-left:16.66666667%}.col-lg-offset-1{margin-left:8.33333333%}.col-lg-offset-0{margin-left:0}}table{background-color:transparent}caption{padding-top:8px;padding-bottom:8px;color:#777;text-align:left}th{text-align:left}.table{width:100%;max-width:100%;margin-bottom:20px}.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td{padding:8px;line-height:1.42857143;vertical-align:top;border-top:1px solid #ddd}.table>thead>tr>th{vertical-align:bottom;border-bottom:2px solid #ddd}.table>caption+thead>tr:first-child>th,.table>colgroup+thead>tr:first-child>th,.table>thead:first-child>tr:first-child>th,.table>caption+thead>tr:first-child>td,.table>colgroup+thead>tr:first-child>td,.table>thead:first-child>tr:first-child>td{border-top:0}.table>tbody+tbody{border-top:2px solid #ddd}.table .table{background-color:#fff}.table-condensed>thead>tr>th,.table-condensed>tbody>tr>th,.table-condensed>tfoot>tr>th,.table-condensed>thead>tr>td,.table-condensed>tbody>tr>td,.table-condensed>tfoot>tr>td{padding:5px}.table-bordered{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>tbody>tr>td,.table-bordered>tfoot>tr>td{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>thead>tr>td{border-bottom-width:2px}.table-striped>tbody>tr:nth-child(odd){background-color:#f9f9f9}.table-hover>tbody>tr:hover{background-color:#f5f5f5}table col[class*=col-]{position:static;display:table-column;float:none}table td[class*=col-],table th[class*=col-]{position:static;display:table-cell;float:none}.table>thead>tr>td.active,.table>tbody>tr>td.active,.table>tfoot>tr>td.active,.table>thead>tr>th.active,.table>tbody>tr>th.active,.table>tfoot>tr>th.active,.table>thead>tr.active>td,.table>tbody>tr.active>td,.table>tfoot>tr.active>td,.table>thead>tr.active>th,.table>tbody>tr.active>th,.table>tfoot>tr.active>th{background-color:#f5f5f5}.table-hover>tbody>tr>td.active:hover,.table-hover>tbody>tr>th.active:hover,.table-hover>tbody>tr.active:hover>td,.table-hover>tbody>tr:hover>.active,.table-hover>tbody>tr.active:hover>th{background-color:#e8e8e8}.table>thead>tr>td.success,.table>tbody>tr>td.success,.table>tfoot>tr>td.success,.table>thead>tr>th.success,.table>tbody>tr>th.success,.table>tfoot>tr>th.success,.table>thead>tr.success>td,.table>tbody>tr.success>td,.table>tfoot>tr.success>td,.table>thead>tr.success>th,.table>tbody>tr.success>th,.table>tfoot>tr.success>th{background-color:#dff0d8}.table-hover>tbody>tr>td.success:hover,.table-hover>tbody>tr>th.success:hover,.table-hover>tbody>tr.success:hover>td,.table-hover>tbody>tr:hover>.success,.table-hover>tbody>tr.success:hover>th{background-color:#d0e9c6}.table>thead>tr>td.info,.table>tbody>tr>td.info,.table>tfoot>tr>td.info,.table>thead>tr>th.info,.table>tbody>tr>th.info,.table>tfoot>tr>th.info,.table>thead>tr.info>td,.table>tbody>tr.info>td,.table>tfoot>tr.info>td,.table>thead>tr.info>th,.table>tbody>tr.info>th,.table>tfoot>tr.info>th{background-color:#d9edf7}.table-hover>tbody>tr>td.info:hover,.table-hover>tbody>tr>th.info:hover,.table-hover>tbody>tr.info:hover>td,.table-hover>tbody>tr:hover>.info,.table-hover>tbody>tr.info:hover>th{background-color:#c4e3f3}.table>thead>tr>td.warning,.table>tbody>tr>td.warning,.table>tfoot>tr>td.warning,.table>thead>tr>th.warning,.table>tbody>tr>th.warning,.table>tfoot>tr>th.warning,.table>thead>tr.warning>td,.table>tbody>tr.warning>td,.table>tfoot>tr.warning>td,.table>thead>tr.warning>th,.table>tbody>tr.warning>th,.table>tfoot>tr.warning>th{background-color:#fcf8e3}.table-hover>tbody>tr>td.warning:hover,.table-hover>tbody>tr>th.warning:hover,.table-hover>tbody>tr.warning:hover>td,.table-hover>tbody>tr:hover>.warning,.table-hover>tbody>tr.warning:hover>th{background-color:#faf2cc}.table>thead>tr>td.danger,.table>tbody>tr>td.danger,.table>tfoot>tr>td.danger,.table>thead>tr>th.danger,.table>tbody>tr>th.danger,.table>tfoot>tr>th.danger,.table>thead>tr.danger>td,.table>tbody>tr.danger>td,.table>tfoot>tr.danger>td,.table>thead>tr.danger>th,.table>tbody>tr.danger>th,.table>tfoot>tr.danger>th{background-color:#f2dede}.table-hover>tbody>tr>td.danger:hover,.table-hover>tbody>tr>th.danger:hover,.table-hover>tbody>tr.danger:hover>td,.table-hover>tbody>tr:hover>.danger,.table-hover>tbody>tr.danger:hover>th{background-color:#ebcccc}.table-responsive{min-height:.01%;overflow-x:auto}@media screen and (max-width:767px){.table-responsive{width:100%;margin-bottom:15px;overflow-y:hidden;-ms-overflow-style:-ms-autohiding-scrollbar;border:1px solid #ddd}.table-responsive>.table{margin-bottom:0}.table-responsive>.table>thead>tr>th,.table-responsive>.table>tbody>tr>th,.table-responsive>.table>tfoot>tr>th,.table-responsive>.table>thead>tr>td,.table-responsive>.table>tbody>tr>td,.table-responsive>.table>tfoot>tr>td{white-space:nowrap}.table-responsive>.table-bordered{border:0}.table-responsive>.table-bordered>thead>tr>th:first-child,.table-responsive>.table-bordered>tbody>tr>th:first-child,.table-responsive>.table-bordered>tfoot>tr>th:first-child,.table-responsive>.table-bordered>thead>tr>td:first-child,.table-responsive>.table-bordered>tbody>tr>td:first-child,.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.table-responsive>.table-bordered>thead>tr>th:last-child,.table-responsive>.table-bordered>tbody>tr>th:last-child,.table-responsive>.table-bordered>tfoot>tr>th:last-child,.table-responsive>.table-bordered>thead>tr>td:last-child,.table-responsive>.table-bordered>tbody>tr>td:last-child,.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.table-responsive>.table-bordered>tbody>tr:last-child>th,.table-responsive>.table-bordered>tfoot>tr:last-child>th,.table-responsive>.table-bordered>tbody>tr:last-child>td,.table-responsive>.table-bordered>tfoot>tr:last-child>td{border-bottom:0}}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;padding:0;margin-bottom:20px;font-size:21px;line-height:inherit;color:#333;border:0;border-bottom:1px solid #e5e5e5}label{display:inline-block;max-width:100%;margin-bottom:5px;font-weight:700}input[type=search]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}input[type=radio],input[type=checkbox]{margin:4px 0 0;margin-top:1px \\9;line-height:normal}input[type=file]{display:block}input[type=range]{display:block;width:100%}select[multiple],select[size]{height:auto}input[type=file]:focus,input[type=radio]:focus,input[type=checkbox]:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}output{display:block;padding-top:7px;font-size:14px;line-height:1.42857143;color:#555}.form-control{display:block;width:100%;height:34px;padding:6px 12px;font-size:14px;line-height:1.42857143;color:#555;background-color:#fff;background-image:none;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075);-webkit-transition:border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;-o-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s}.form-control:focus{border-color:#66afe9;outline:0;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)}.form-control::-moz-placeholder{color:#999;opacity:1}.form-control:-ms-input-placeholder{color:#999}.form-control::-webkit-input-placeholder{color:#999}.form-control[disabled],.form-control[readonly],fieldset[disabled] .form-control{cursor:not-allowed;background-color:#eee;opacity:1}textarea.form-control{height:auto}input[type=search]{-webkit-appearance:none}@media screen and (-webkit-min-device-pixel-ratio:0){input[type=date],input[type=time],input[type=datetime-local],input[type=month]{line-height:34px}input[type=date].input-sm,input[type=time].input-sm,input[type=datetime-local].input-sm,input[type=month].input-sm{line-height:30px}input[type=date].input-lg,input[type=time].input-lg,input[type=datetime-local].input-lg,input[type=month].input-lg{line-height:46px}}.form-group{margin-bottom:15px}.radio,.checkbox{position:relative;display:block;margin-top:10px;margin-bottom:10px}.radio label,.checkbox label{min-height:20px;padding-left:20px;margin-bottom:0;font-weight:400;cursor:pointer}.radio input[type=radio],.radio-inline input[type=radio],.checkbox input[type=checkbox],.checkbox-inline input[type=checkbox]{position:absolute;margin-top:4px \\9;margin-left:-20px}.radio+.radio,.checkbox+.checkbox{margin-top:-5px}.radio-inline,.checkbox-inline{display:inline-block;padding-left:20px;margin-bottom:0;font-weight:400;vertical-align:middle;cursor:pointer}.radio-inline+.radio-inline,.checkbox-inline+.checkbox-inline{margin-top:0;margin-left:10px}input[type=radio][disabled],input[type=checkbox][disabled],input[type=radio].disabled,input[type=checkbox].disabled,fieldset[disabled] input[type=radio],fieldset[disabled] input[type=checkbox]{cursor:not-allowed}.radio-inline.disabled,.checkbox-inline.disabled,fieldset[disabled] .radio-inline,fieldset[disabled] .checkbox-inline{cursor:not-allowed}.radio.disabled label,.checkbox.disabled label,fieldset[disabled] .radio label,fieldset[disabled] .checkbox label{cursor:not-allowed}.form-control-static{padding-top:7px;padding-bottom:7px;margin-bottom:0}.form-control-static.input-lg,.form-control-static.input-sm{padding-right:0;padding-left:0}.input-sm,.form-group-sm .form-control{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-sm,select.form-group-sm .form-control{height:30px;line-height:30px}textarea.input-sm,textarea.form-group-sm .form-control,select[multiple].input-sm,select[multiple].form-group-sm .form-control{height:auto}.input-lg,.form-group-lg .form-control{height:46px;padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}select.input-lg,select.form-group-lg .form-control{height:46px;line-height:46px}textarea.input-lg,textarea.form-group-lg .form-control,select[multiple].input-lg,select[multiple].form-group-lg .form-control{height:auto}.has-feedback{position:relative}.has-feedback .form-control{padding-right:42.5px}.form-control-feedback{position:absolute;top:0;right:0;z-index:2;display:block;width:34px;height:34px;line-height:34px;text-align:center;pointer-events:none}.input-lg+.form-control-feedback{width:46px;height:46px;line-height:46px}.input-sm+.form-control-feedback{width:30px;height:30px;line-height:30px}.has-success .help-block,.has-success .control-label,.has-success .radio,.has-success .checkbox,.has-success .radio-inline,.has-success .checkbox-inline,.has-success.radio label,.has-success.checkbox label,.has-success.radio-inline label,.has-success.checkbox-inline label{color:#3c763d}.has-success .form-control{border-color:#3c763d;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-success .form-control:focus{border-color:#2b542c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #67b168;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #67b168}.has-success .input-group-addon{color:#3c763d;background-color:#dff0d8;border-color:#3c763d}.has-success .form-control-feedback{color:#3c763d}.has-warning .help-block,.has-warning .control-label,.has-warning .radio,.has-warning .checkbox,.has-warning .radio-inline,.has-warning .checkbox-inline,.has-warning.radio label,.has-warning.checkbox label,.has-warning.radio-inline label,.has-warning.checkbox-inline label{color:#8a6d3b}.has-warning .form-control{border-color:#8a6d3b;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-warning .form-control:focus{border-color:#66512c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #c0a16b;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #c0a16b}.has-warning .input-group-addon{color:#8a6d3b;background-color:#fcf8e3;border-color:#8a6d3b}.has-warning .form-control-feedback{color:#8a6d3b}.has-error .help-block,.has-error .control-label,.has-error .radio,.has-error .checkbox,.has-error .radio-inline,.has-error .checkbox-inline,.has-error.radio label,.has-error.checkbox label,.has-error.radio-inline label,.has-error.checkbox-inline label{color:#a94442}.has-error .form-control{border-color:#a94442;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-error .form-control:focus{border-color:#843534;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483}.has-error .input-group-addon{color:#a94442;background-color:#f2dede;border-color:#a94442}.has-error .form-control-feedback{color:#a94442}.has-feedback label~.form-control-feedback{top:25px}.has-feedback label.sr-only~.form-control-feedback{top:0}.help-block{display:block;margin-top:5px;margin-bottom:10px;color:#737373}@media (min-width:768px){.form-inline .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-static{display:inline-block}.form-inline .input-group{display:inline-table;vertical-align:middle}.form-inline .input-group .input-group-addon,.form-inline .input-group .input-group-btn,.form-inline .input-group .form-control{width:auto}.form-inline .input-group>.form-control{width:100%}.form-inline .control-label{margin-bottom:0;vertical-align:middle}.form-inline .radio,.form-inline .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.form-inline .radio label,.form-inline .checkbox label{padding-left:0}.form-inline .radio input[type=radio],.form-inline .checkbox input[type=checkbox]{position:relative;margin-left:0}.form-inline .has-feedback .form-control-feedback{top:0}}.form-horizontal .radio,.form-horizontal .checkbox,.form-horizontal .radio-inline,.form-horizontal .checkbox-inline{padding-top:7px;margin-top:0;margin-bottom:0}.form-horizontal .radio,.form-horizontal .checkbox{min-height:27px}.form-horizontal .form-group{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.form-horizontal .control-label{padding-top:7px;margin-bottom:0;text-align:right}}.form-horizontal .has-feedback .form-control-feedback{right:15px}@media (min-width:768px){.form-horizontal .form-group-lg .control-label{padding-top:14.3px}}@media (min-width:768px){.form-horizontal .form-group-sm .control-label{padding-top:6px}}.btn{display:inline-block;padding:6px 12px;margin-bottom:0;font-size:14px;font-weight:400;line-height:1.42857143;text-align:center;white-space:nowrap;vertical-align:middle;-ms-touch-action:manipulation;touch-action:manipulation;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-image:none;border:1px solid transparent;border-radius:4px}.btn:focus,.btn:active:focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn.active.focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}.btn:hover,.btn:focus,.btn.focus{color:#333;text-decoration:none}.btn:active,.btn.active{background-image:none;outline:0;-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);box-shadow:inset 0 3px 5px rgba(0,0,0,.125)}.btn.disabled,.btn[disabled],fieldset[disabled] .btn{pointer-events:none;cursor:not-allowed;filter:alpha(opacity=65);-webkit-box-shadow:none;box-shadow:none;opacity:.65}.btn-default{color:#333;background-color:#fff;border-color:#ccc}.btn-default:hover,.btn-default:focus,.btn-default.focus,.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{color:#333;background-color:#e6e6e6;border-color:#adadad}.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{background-image:none}.btn-default.disabled,.btn-default[disabled],fieldset[disabled] .btn-default,.btn-default.disabled:hover,.btn-default[disabled]:hover,fieldset[disabled] .btn-default:hover,.btn-default.disabled:focus,.btn-default[disabled]:focus,fieldset[disabled] .btn-default:focus,.btn-default.disabled.focus,.btn-default[disabled].focus,fieldset[disabled] .btn-default.focus,.btn-default.disabled:active,.btn-default[disabled]:active,fieldset[disabled] .btn-default:active,.btn-default.disabled.active,.btn-default[disabled].active,fieldset[disabled] .btn-default.active{background-color:#fff;border-color:#ccc}.btn-default .badge{color:#fff;background-color:#333}.btn-primary{color:#fff;background-color:#337ab7;border-color:#2e6da4}.btn-primary:hover,.btn-primary:focus,.btn-primary.focus,.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{color:#fff;background-color:#286090;border-color:#204d74}.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{background-image:none}.btn-primary.disabled,.btn-primary[disabled],fieldset[disabled] .btn-primary,.btn-primary.disabled:hover,.btn-primary[disabled]:hover,fieldset[disabled] .btn-primary:hover,.btn-primary.disabled:focus,.btn-primary[disabled]:focus,fieldset[disabled] .btn-primary:focus,.btn-primary.disabled.focus,.btn-primary[disabled].focus,fieldset[disabled] .btn-primary.focus,.btn-primary.disabled:active,.btn-primary[disabled]:active,fieldset[disabled] .btn-primary:active,.btn-primary.disabled.active,.btn-primary[disabled].active,fieldset[disabled] .btn-primary.active{background-color:#337ab7;border-color:#2e6da4}.btn-primary .badge{color:#337ab7;background-color:#fff}.btn-success{color:#fff;background-color:#5cb85c;border-color:#4cae4c}.btn-success:hover,.btn-success:focus,.btn-success.focus,.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{color:#fff;background-color:#449d44;border-color:#398439}.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{background-image:none}.btn-success.disabled,.btn-success[disabled],fieldset[disabled] .btn-success,.btn-success.disabled:hover,.btn-success[disabled]:hover,fieldset[disabled] .btn-success:hover,.btn-success.disabled:focus,.btn-success[disabled]:focus,fieldset[disabled] .btn-success:focus,.btn-success.disabled.focus,.btn-success[disabled].focus,fieldset[disabled] .btn-success.focus,.btn-success.disabled:active,.btn-success[disabled]:active,fieldset[disabled] .btn-success:active,.btn-success.disabled.active,.btn-success[disabled].active,fieldset[disabled] .btn-success.active{background-color:#5cb85c;border-color:#4cae4c}.btn-success .badge{color:#5cb85c;background-color:#fff}.btn-info{color:#fff;background-color:#5bc0de;border-color:#46b8da}.btn-info:hover,.btn-info:focus,.btn-info.focus,.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{color:#fff;background-color:#31b0d5;border-color:#269abc}.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{background-image:none}.btn-info.disabled,.btn-info[disabled],fieldset[disabled] .btn-info,.btn-info.disabled:hover,.btn-info[disabled]:hover,fieldset[disabled] .btn-info:hover,.btn-info.disabled:focus,.btn-info[disabled]:focus,fieldset[disabled] .btn-info:focus,.btn-info.disabled.focus,.btn-info[disabled].focus,fieldset[disabled] .btn-info.focus,.btn-info.disabled:active,.btn-info[disabled]:active,fieldset[disabled] .btn-info:active,.btn-info.disabled.active,.btn-info[disabled].active,fieldset[disabled] .btn-info.active{background-color:#5bc0de;border-color:#46b8da}.btn-info .badge{color:#5bc0de;background-color:#fff}.btn-warning{color:#fff;background-color:#f0ad4e;border-color:#eea236}.btn-warning:hover,.btn-warning:focus,.btn-warning.focus,.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{color:#fff;background-color:#ec971f;border-color:#d58512}.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{background-image:none}.btn-warning.disabled,.btn-warning[disabled],fieldset[disabled] .btn-warning,.btn-warning.disabled:hover,.btn-warning[disabled]:hover,fieldset[disabled] .btn-warning:hover,.btn-warning.disabled:focus,.btn-warning[disabled]:focus,fieldset[disabled] .btn-warning:focus,.btn-warning.disabled.focus,.btn-warning[disabled].focus,fieldset[disabled] .btn-warning.focus,.btn-warning.disabled:active,.btn-warning[disabled]:active,fieldset[disabled] .btn-warning:active,.btn-warning.disabled.active,.btn-warning[disabled].active,fieldset[disabled] .btn-warning.active{background-color:#f0ad4e;border-color:#eea236}.btn-warning .badge{color:#f0ad4e;background-color:#fff}.btn-danger{color:#fff;background-color:#d9534f;border-color:#d43f3a}.btn-danger:hover,.btn-danger:focus,.btn-danger.focus,.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{color:#fff;background-color:#c9302c;border-color:#ac2925}.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{background-image:none}.btn-danger.disabled,.btn-danger[disabled],fieldset[disabled] .btn-danger,.btn-danger.disabled:hover,.btn-danger[disabled]:hover,fieldset[disabled] .btn-danger:hover,.btn-danger.disabled:focus,.btn-danger[disabled]:focus,fieldset[disabled] .btn-danger:focus,.btn-danger.disabled.focus,.btn-danger[disabled].focus,fieldset[disabled] .btn-danger.focus,.btn-danger.disabled:active,.btn-danger[disabled]:active,fieldset[disabled] .btn-danger:active,.btn-danger.disabled.active,.btn-danger[disabled].active,fieldset[disabled] .btn-danger.active{background-color:#d9534f;border-color:#d43f3a}.btn-danger .badge{color:#d9534f;background-color:#fff}.btn-link{font-weight:400;color:#337ab7;border-radius:0}.btn-link,.btn-link:active,.btn-link.active,.btn-link[disabled],fieldset[disabled] .btn-link{background-color:transparent;-webkit-box-shadow:none;box-shadow:none}.btn-link,.btn-link:hover,.btn-link:focus,.btn-link:active{border-color:transparent}.btn-link:hover,.btn-link:focus{color:#23527c;text-decoration:underline;background-color:transparent}.btn-link[disabled]:hover,fieldset[disabled] .btn-link:hover,.btn-link[disabled]:focus,fieldset[disabled] .btn-link:focus{color:#777;text-decoration:none}.btn-lg,.btn-group-lg>.btn{padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}.btn-sm,.btn-group-sm>.btn{padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}.btn-xs,.btn-group-xs>.btn{padding:1px 5px;font-size:12px;line-height:1.5;border-radius:3px}.btn-block{display:block;width:100%}.btn-block+.btn-block{margin-top:5px}input[type=submit].btn-block,input[type=reset].btn-block,input[type=button].btn-block{width:100%}.fade{opacity:0;-webkit-transition:opacity .15s linear;-o-transition:opacity .15s linear;transition:opacity .15s linear}.fade.in{opacity:1}.collapse{display:none;visibility:hidden}.collapse.in{display:block;visibility:visible}tr.collapse.in{display:table-row}tbody.collapse.in{display:table-row-group}.collapsing{position:relative;height:0;overflow:hidden;-webkit-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;-webkit-transition-duration:.35s;-o-transition-duration:.35s;transition-duration:.35s;-webkit-transition-property:height,visibility;-o-transition-property:height,visibility;transition-property:height,visibility}.caret{display:inline-block;width:0;height:0;margin-left:2px;vertical-align:middle;border-top:4px solid;border-right:4px solid transparent;border-left:4px solid transparent}.dropdown{position:relative}.dropdown-toggle:focus{outline:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:160px;padding:5px 0;margin:2px 0 0;font-size:14px;text-align:left;list-style:none;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,.15);border-radius:4px;-webkit-box-shadow:0 6px 12px rgba(0,0,0,.175);box-shadow:0 6px 12px rgba(0,0,0,.175)}.dropdown-menu.pull-right{right:0;left:auto}.dropdown-menu .divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.dropdown-menu>li>a{display:block;padding:3px 20px;clear:both;font-weight:400;line-height:1.42857143;color:#333;white-space:nowrap}.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus{color:#262626;text-decoration:none;background-color:#f5f5f5}.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus{color:#fff;text-decoration:none;background-color:#337ab7;outline:0}.dropdown-menu>.disabled>a,.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{color:#777}.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{text-decoration:none;cursor:not-allowed;background-color:transparent;background-image:none;filter:progid:DXImageTransform.Microsoft.gradient(enabled=false)}.open>.dropdown-menu{display:block}.open>a{outline:0}.dropdown-menu-right{right:0;left:auto}.dropdown-menu-left{right:auto;left:0}.dropdown-header{display:block;padding:3px 20px;font-size:12px;line-height:1.42857143;color:#777;white-space:nowrap}.dropdown-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:990}.pull-right>.dropdown-menu{right:0;left:auto}.dropup .caret,.navbar-fixed-bottom .dropdown .caret{content:"";border-top:0;border-bottom:4px solid}.dropup .dropdown-menu,.navbar-fixed-bottom .dropdown .dropdown-menu{top:auto;bottom:100%;margin-bottom:1px}@media (min-width:768px){.navbar-right .dropdown-menu{right:0;left:auto}.navbar-right .dropdown-menu-left{right:auto;left:0}}.btn-group,.btn-group-vertical{position:relative;display:inline-block;vertical-align:middle}.btn-group>.btn,.btn-group-vertical>.btn{position:relative;float:left}.btn-group>.btn:hover,.btn-group-vertical>.btn:hover,.btn-group>.btn:focus,.btn-group-vertical>.btn:focus,.btn-group>.btn:active,.btn-group-vertical>.btn:active,.btn-group>.btn.active,.btn-group-vertical>.btn.active{z-index:2}.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{margin-left:-5px}.btn-toolbar .btn-group,.btn-toolbar .input-group{float:left}.btn-toolbar>.btn,.btn-toolbar>.btn-group,.btn-toolbar>.input-group{margin-left:5px}.btn-group>.btn:not(:first-child):not(:last-child):not(.dropdown-toggle){border-radius:0}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn:last-child:not(:first-child),.btn-group>.dropdown-toggle:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.btn-group>.btn-group{float:left}.btn-group>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group>.btn-group:first-child>.btn:last-child,.btn-group>.btn-group:first-child>.dropdown-toggle{border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:last-child>.btn:first-child{border-top-left-radius:0;border-bottom-left-radius:0}.btn-group .dropdown-toggle:active,.btn-group.open .dropdown-toggle{outline:0}.btn-group>.btn+.dropdown-toggle{padding-right:8px;padding-left:8px}.btn-group>.btn-lg+.dropdown-toggle{padding-right:12px;padding-left:12px}.btn-group.open .dropdown-toggle{-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);box-shadow:inset 0 3px 5px rgba(0,0,0,.125)}.btn-group.open .dropdown-toggle.btn-link{-webkit-box-shadow:none;box-shadow:none}.btn .caret{margin-left:0}.btn-lg .caret{border-width:5px 5px 0;border-bottom-width:0}.dropup .btn-lg .caret{border-width:0 5px 5px}.btn-group-vertical>.btn,.btn-group-vertical>.btn-group,.btn-group-vertical>.btn-group>.btn{display:block;float:none;width:100%;max-width:100%}.btn-group-vertical>.btn-group>.btn{float:none}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn:not(:first-child):not(:last-child){border-radius:0}.btn-group-vertical>.btn:first-child:not(:last-child){border-top-right-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn:last-child:not(:first-child){border-top-left-radius:0;border-top-right-radius:0;border-bottom-left-radius:4px}.btn-group-vertical>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group-vertical>.btn-group:first-child:not(:last-child)>.btn:last-child,.btn-group-vertical>.btn-group:first-child:not(:last-child)>.dropdown-toggle{border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:last-child:not(:first-child)>.btn:first-child{border-top-left-radius:0;border-top-right-radius:0}.btn-group-justified{display:table;width:100%;table-layout:fixed;border-collapse:separate}.btn-group-justified>.btn,.btn-group-justified>.btn-group{display:table-cell;float:none;width:1%}.btn-group-justified>.btn-group .btn{width:100%}.btn-group-justified>.btn-group .dropdown-menu{left:auto}[data-toggle=buttons]>.btn input[type=radio],[data-toggle=buttons]>.btn-group>.btn input[type=radio],[data-toggle=buttons]>.btn input[type=checkbox],[data-toggle=buttons]>.btn-group>.btn input[type=checkbox]{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.input-group{position:relative;display:table;border-collapse:separate}.input-group[class*=col-]{float:none;padding-right:0;padding-left:0}.input-group .form-control{position:relative;z-index:2;float:left;width:100%;margin-bottom:0}.input-group-lg>.form-control,.input-group-lg>.input-group-addon,.input-group-lg>.input-group-btn>.btn{height:46px;padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}select.input-group-lg>.form-control,select.input-group-lg>.input-group-addon,select.input-group-lg>.input-group-btn>.btn{height:46px;line-height:46px}textarea.input-group-lg>.form-control,textarea.input-group-lg>.input-group-addon,textarea.input-group-lg>.input-group-btn>.btn,select[multiple].input-group-lg>.form-control,select[multiple].input-group-lg>.input-group-addon,select[multiple].input-group-lg>.input-group-btn>.btn{height:auto}.input-group-sm>.form-control,.input-group-sm>.input-group-addon,.input-group-sm>.input-group-btn>.btn{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-group-sm>.form-control,select.input-group-sm>.input-group-addon,select.input-group-sm>.input-group-btn>.btn{height:30px;line-height:30px}textarea.input-group-sm>.form-control,textarea.input-group-sm>.input-group-addon,textarea.input-group-sm>.input-group-btn>.btn,select[multiple].input-group-sm>.form-control,select[multiple].input-group-sm>.input-group-addon,select[multiple].input-group-sm>.input-group-btn>.btn{height:auto}.input-group-addon,.input-group-btn,.input-group .form-control{display:table-cell}.input-group-addon:not(:first-child):not(:last-child),.input-group-btn:not(:first-child):not(:last-child),.input-group .form-control:not(:first-child):not(:last-child){border-radius:0}.input-group-addon,.input-group-btn{width:1%;white-space:nowrap;vertical-align:middle}.input-group-addon{padding:6px 12px;font-size:14px;font-weight:400;line-height:1;color:#555;text-align:center;background-color:#eee;border:1px solid #ccc;border-radius:4px}.input-group-addon.input-sm{padding:5px 10px;font-size:12px;border-radius:3px}.input-group-addon.input-lg{padding:10px 16px;font-size:18px;border-radius:6px}.input-group-addon input[type=radio],.input-group-addon input[type=checkbox]{margin-top:0}.input-group .form-control:first-child,.input-group-addon:first-child,.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group>.btn,.input-group-btn:first-child>.dropdown-toggle,.input-group-btn:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group-btn:last-child>.btn-group:not(:last-child)>.btn{border-top-right-radius:0;border-bottom-right-radius:0}.input-group-addon:first-child{border-right:0}.input-group .form-control:last-child,.input-group-addon:last-child,.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group>.btn,.input-group-btn:last-child>.dropdown-toggle,.input-group-btn:first-child>.btn:not(:first-child),.input-group-btn:first-child>.btn-group:not(:first-child)>.btn{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-addon:last-child{border-left:0}.input-group-btn{position:relative;font-size:0;white-space:nowrap}.input-group-btn>.btn{position:relative}.input-group-btn>.btn+.btn{margin-left:-1px}.input-group-btn>.btn:hover,.input-group-btn>.btn:focus,.input-group-btn>.btn:active{z-index:2}.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group{margin-right:-1px}.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group{margin-left:-1px}.nav{padding-left:0;margin-bottom:0;list-style:none}.nav>li{position:relative;display:block}.nav>li>a{position:relative;display:block;padding:10px 15px}.nav>li>a:hover,.nav>li>a:focus{text-decoration:none;background-color:#eee}.nav>li.disabled>a{color:#777}.nav>li.disabled>a:hover,.nav>li.disabled>a:focus{color:#777;text-decoration:none;cursor:not-allowed;background-color:transparent}.nav .open>a,.nav .open>a:hover,.nav .open>a:focus{background-color:#eee;border-color:#337ab7}.nav .nav-divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.nav>li>a>img{max-width:none}.nav-tabs{border-bottom:1px solid #ddd}.nav-tabs>li{float:left;margin-bottom:-1px}.nav-tabs>li>a{margin-right:2px;line-height:1.42857143;border:1px solid transparent;border-radius:4px 4px 0 0}.nav-tabs>li>a:hover{border-color:#eee #eee #ddd}.nav-tabs>li.active>a,.nav-tabs>li.active>a:hover,.nav-tabs>li.active>a:focus{color:#555;cursor:default;background-color:#fff;border:1px solid #ddd;border-bottom-color:transparent}.nav-tabs.nav-justified{width:100%;border-bottom:0}.nav-tabs.nav-justified>li{float:none}.nav-tabs.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-tabs.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-tabs.nav-justified>li{display:table-cell;width:1%}.nav-tabs.nav-justified>li>a{margin-bottom:0}}.nav-tabs.nav-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs.nav-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border-bottom-color:#fff}}.nav-pills>li{float:left}.nav-pills>li>a{border-radius:4px}.nav-pills>li+li{margin-left:2px}.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus{color:#fff;background-color:#337ab7}.nav-stacked>li{float:none}.nav-stacked>li+li{margin-top:2px;margin-left:0}.nav-justified{width:100%}.nav-justified>li{float:none}.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-justified>li{display:table-cell;width:1%}.nav-justified>li>a{margin-bottom:0}}.nav-tabs-justified{border-bottom:0}.nav-tabs-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border-bottom-color:#fff}}.tab-content>.tab-pane{display:none;visibility:hidden}.tab-content>.active{display:block;visibility:visible}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-left-radius:0;border-top-right-radius:0}.navbar{position:relative;min-height:50px;margin-bottom:20px;border:1px solid transparent}@media (min-width:768px){.navbar{border-radius:4px}}@media (min-width:768px){.navbar-header{float:left}}.navbar-collapse{padding-right:15px;padding-left:15px;overflow-x:visible;-webkit-overflow-scrolling:touch;border-top:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1)}.navbar-collapse.in{overflow-y:auto}@media (min-width:768px){.navbar-collapse{width:auto;border-top:0;-webkit-box-shadow:none;box-shadow:none}.navbar-collapse.collapse{display:block!important;height:auto!important;padding-bottom:0;overflow:visible!important;visibility:visible!important}.navbar-collapse.in{overflow-y:visible}.navbar-fixed-top .navbar-collapse,.navbar-static-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{padding-right:0;padding-left:0}}.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:340px}@media (max-device-width:480px) and (orientation:landscape){.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:200px}}.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:0;margin-left:0}}.navbar-static-top{z-index:1000;border-width:0 0 1px}@media (min-width:768px){.navbar-static-top{border-radius:0}}.navbar-fixed-top,.navbar-fixed-bottom{position:fixed;right:0;left:0;z-index:1030}@media (min-width:768px){.navbar-fixed-top,.navbar-fixed-bottom{border-radius:0}}.navbar-fixed-top{top:0;border-width:0 0 1px}.navbar-fixed-bottom{bottom:0;margin-bottom:0;border-width:1px 0 0}.navbar-brand{float:left;height:50px;padding:15px 15px;font-size:18px;line-height:20px}.navbar-brand:hover,.navbar-brand:focus{text-decoration:none}.navbar-brand>img{display:block}@media (min-width:768px){.navbar>.container .navbar-brand,.navbar>.container-fluid .navbar-brand{margin-left:-15px}}.navbar-toggle{position:relative;float:right;padding:9px 10px;margin-top:8px;margin-right:15px;margin-bottom:8px;background-color:transparent;background-image:none;border:1px solid transparent;border-radius:4px}.navbar-toggle:focus{outline:0}.navbar-toggle .icon-bar{display:block;width:22px;height:2px;border-radius:1px}.navbar-toggle .icon-bar+.icon-bar{margin-top:4px}@media (min-width:768px){.navbar-toggle{display:none}}.navbar-nav{margin:7.5px -15px}.navbar-nav>li>a{padding-top:10px;padding-bottom:10px;line-height:20px}@media (max-width:767px){.navbar-nav .open .dropdown-menu{position:static;float:none;width:auto;margin-top:0;background-color:transparent;border:0;-webkit-box-shadow:none;box-shadow:none}.navbar-nav .open .dropdown-menu>li>a,.navbar-nav .open .dropdown-menu .dropdown-header{padding:5px 15px 5px 25px}.navbar-nav .open .dropdown-menu>li>a{line-height:20px}.navbar-nav .open .dropdown-menu>li>a:hover,.navbar-nav .open .dropdown-menu>li>a:focus{background-image:none}}@media (min-width:768px){.navbar-nav{float:left;margin:0}.navbar-nav>li{float:left}.navbar-nav>li>a{padding-top:15px;padding-bottom:15px}}.navbar-form{padding:10px 15px;margin-top:8px;margin-right:-15px;margin-bottom:8px;margin-left:-15px;border-top:1px solid transparent;border-bottom:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1)}@media (min-width:768px){.navbar-form .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.navbar-form .form-control{display:inline-block;width:auto;vertical-align:middle}.navbar-form .form-control-static{display:inline-block}.navbar-form .input-group{display:inline-table;vertical-align:middle}.navbar-form .input-group .input-group-addon,.navbar-form .input-group .input-group-btn,.navbar-form .input-group .form-control{width:auto}.navbar-form .input-group>.form-control{width:100%}.navbar-form .control-label{margin-bottom:0;vertical-align:middle}.navbar-form .radio,.navbar-form .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.navbar-form .radio label,.navbar-form .checkbox label{padding-left:0}.navbar-form .radio input[type=radio],.navbar-form .checkbox input[type=checkbox]{position:relative;margin-left:0}.navbar-form .has-feedback .form-control-feedback{top:0}}@media (max-width:767px){.navbar-form .form-group{margin-bottom:5px}.navbar-form .form-group:last-child{margin-bottom:0}}@media (min-width:768px){.navbar-form{width:auto;padding-top:0;padding-bottom:0;margin-right:0;margin-left:0;border:0;-webkit-box-shadow:none;box-shadow:none}}.navbar-nav>li>.dropdown-menu{margin-top:0;border-top-left-radius:0;border-top-right-radius:0}.navbar-fixed-bottom .navbar-nav>li>.dropdown-menu{border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.navbar-btn{margin-top:8px;margin-bottom:8px}.navbar-btn.btn-sm{margin-top:10px;margin-bottom:10px}.navbar-btn.btn-xs{margin-top:14px;margin-bottom:14px}.navbar-text{margin-top:15px;margin-bottom:15px}@media (min-width:768px){.navbar-text{float:left;margin-right:15px;margin-left:15px}}@media (min-width:768px){.navbar-left{float:left!important}.navbar-right{float:right!important;margin-right:-15px}.navbar-right~.navbar-right{margin-right:0}}.navbar-default{background-color:#f8f8f8;border-color:#e7e7e7}.navbar-default .navbar-brand{color:#777}.navbar-default .navbar-brand:hover,.navbar-default .navbar-brand:focus{color:#5e5e5e;background-color:transparent}.navbar-default .navbar-text{color:#777}.navbar-default .navbar-nav>li>a{color:#777}.navbar-default .navbar-nav>li>a:hover,.navbar-default .navbar-nav>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.active>a:hover,.navbar-default .navbar-nav>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav>.disabled>a,.navbar-default .navbar-nav>.disabled>a:hover,.navbar-default .navbar-nav>.disabled>a:focus{color:#ccc;background-color:transparent}.navbar-default .navbar-toggle{border-color:#ddd}.navbar-default .navbar-toggle:hover,.navbar-default .navbar-toggle:focus{background-color:#ddd}.navbar-default .navbar-toggle .icon-bar{background-color:#888}.navbar-default .navbar-collapse,.navbar-default .navbar-form{border-color:#e7e7e7}.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a:focus{color:#555;background-color:#e7e7e7}@media (max-width:767px){.navbar-default .navbar-nav .open .dropdown-menu>li>a{color:#777}.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav .open .dropdown-menu>.active>a,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#ccc;background-color:transparent}}.navbar-default .navbar-link{color:#777}.navbar-default .navbar-link:hover{color:#333}.navbar-default .btn-link{color:#777}.navbar-default .btn-link:hover,.navbar-default .btn-link:focus{color:#333}.navbar-default .btn-link[disabled]:hover,fieldset[disabled] .navbar-default .btn-link:hover,.navbar-default .btn-link[disabled]:focus,fieldset[disabled] .navbar-default .btn-link:focus{color:#ccc}.navbar-inverse{background-color:#222;border-color:#080808}.navbar-inverse .navbar-brand{color:#9d9d9d}.navbar-inverse .navbar-brand:hover,.navbar-inverse .navbar-brand:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-text{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a:hover,.navbar-inverse .navbar-nav>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav>.disabled>a,.navbar-inverse .navbar-nav>.disabled>a:hover,.navbar-inverse .navbar-nav>.disabled>a:focus{color:#444;background-color:transparent}.navbar-inverse .navbar-toggle{border-color:#333}.navbar-inverse .navbar-toggle:hover,.navbar-inverse .navbar-toggle:focus{background-color:#333}.navbar-inverse .navbar-toggle .icon-bar{background-color:#fff}.navbar-inverse .navbar-collapse,.navbar-inverse .navbar-form{border-color:#101010}.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a:focus{color:#fff;background-color:#080808}@media (max-width:767px){.navbar-inverse .navbar-nav .open .dropdown-menu>.dropdown-header{border-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu .divider{background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#444;background-color:transparent}}.navbar-inverse .navbar-link{color:#9d9d9d}.navbar-inverse .navbar-link:hover{color:#fff}.navbar-inverse .btn-link{color:#9d9d9d}.navbar-inverse .btn-link:hover,.navbar-inverse .btn-link:focus{color:#fff}.navbar-inverse .btn-link[disabled]:hover,fieldset[disabled] .navbar-inverse .btn-link:hover,.navbar-inverse .btn-link[disabled]:focus,fieldset[disabled] .navbar-inverse .btn-link:focus{color:#444}.breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#f5f5f5;border-radius:4px}.breadcrumb>li{display:inline-block}.breadcrumb>li+li:before{padding:0 5px;color:#ccc;content:"/\\00a0"}.breadcrumb>.active{color:#777}.pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;margin-left:-1px;line-height:1.42857143;color:#337ab7;text-decoration:none;background-color:#fff;border:1px solid #ddd}.pagination>li:first-child>a,.pagination>li:first-child>span{margin-left:0;border-top-left-radius:4px;border-bottom-left-radius:4px}.pagination>li:last-child>a,.pagination>li:last-child>span{border-top-right-radius:4px;border-bottom-right-radius:4px}.pagination>li>a:hover,.pagination>li>span:hover,.pagination>li>a:focus,.pagination>li>span:focus{color:#23527c;background-color:#eee;border-color:#ddd}.pagination>.active>a,.pagination>.active>span,.pagination>.active>a:hover,.pagination>.active>span:hover,.pagination>.active>a:focus,.pagination>.active>span:focus{z-index:2;color:#fff;cursor:default;background-color:#337ab7;border-color:#337ab7}.pagination>.disabled>span,.pagination>.disabled>span:hover,.pagination>.disabled>span:focus,.pagination>.disabled>a,.pagination>.disabled>a:hover,.pagination>.disabled>a:focus{color:#777;cursor:not-allowed;background-color:#fff;border-color:#ddd}.pagination-lg>li>a,.pagination-lg>li>span{padding:10px 16px;font-size:18px}.pagination-lg>li:first-child>a,.pagination-lg>li:first-child>span{border-top-left-radius:6px;border-bottom-left-radius:6px}.pagination-lg>li:last-child>a,.pagination-lg>li:last-child>span{border-top-right-radius:6px;border-bottom-right-radius:6px}.pagination-sm>li>a,.pagination-sm>li>span{padding:5px 10px;font-size:12px}.pagination-sm>li:first-child>a,.pagination-sm>li:first-child>span{border-top-left-radius:3px;border-bottom-left-radius:3px}.pagination-sm>li:last-child>a,.pagination-sm>li:last-child>span{border-top-right-radius:3px;border-bottom-right-radius:3px}.pager{padding-left:0;margin:20px 0;text-align:center;list-style:none}.pager li{display:inline}.pager li>a,.pager li>span{display:inline-block;padding:5px 14px;background-color:#fff;border:1px solid #ddd;border-radius:15px}.pager li>a:hover,.pager li>a:focus{text-decoration:none;background-color:#eee}.pager .next>a,.pager .next>span{float:right}.pager .previous>a,.pager .previous>span{float:left}.pager .disabled>a,.pager .disabled>a:hover,.pager .disabled>a:focus,.pager .disabled>span{color:#777;cursor:not-allowed;background-color:#fff}.label{display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em}a.label:hover,a.label:focus{color:#fff;text-decoration:none;cursor:pointer}.label:empty{display:none}.btn .label{position:relative;top:-1px}.label-default{background-color:#777}.label-default[href]:hover,.label-default[href]:focus{background-color:#5e5e5e}.label-primary{background-color:#337ab7}.label-primary[href]:hover,.label-primary[href]:focus{background-color:#286090}.label-success{background-color:#5cb85c}.label-success[href]:hover,.label-success[href]:focus{background-color:#449d44}.label-info{background-color:#5bc0de}.label-info[href]:hover,.label-info[href]:focus{background-color:#31b0d5}.label-warning{background-color:#f0ad4e}.label-warning[href]:hover,.label-warning[href]:focus{background-color:#ec971f}.label-danger{background-color:#d9534f}.label-danger[href]:hover,.label-danger[href]:focus{background-color:#c9302c}.badge{display:inline-block;min-width:10px;padding:3px 7px;font-size:12px;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;background-color:#777;border-radius:10px}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.btn-xs .badge{top:0;padding:1px 5px}a.badge:hover,a.badge:focus{color:#fff;text-decoration:none;cursor:pointer}.list-group-item.active>.badge,.nav-pills>.active>a>.badge{color:#337ab7;background-color:#fff}.list-group-item>.badge{float:right}.list-group-item>.badge+.badge{margin-right:5px}.nav-pills>li>a>.badge{margin-left:3px}.jumbotron{padding:30px 15px;margin-bottom:30px;color:inherit;background-color:#eee}.jumbotron h1,.jumbotron .h1{color:inherit}.jumbotron p{margin-bottom:15px;font-size:21px;font-weight:200}.jumbotron>hr{border-top-color:#d5d5d5}.container .jumbotron,.container-fluid .jumbotron{border-radius:6px}.jumbotron .container{max-width:100%}@media screen and (min-width:768px){.jumbotron{padding:48px 0}.container .jumbotron,.container-fluid .jumbotron{padding-right:60px;padding-left:60px}.jumbotron h1,.jumbotron .h1{font-size:63px}}.thumbnail{display:block;padding:4px;margin-bottom:20px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:border .2s ease-in-out;-o-transition:border .2s ease-in-out;transition:border .2s ease-in-out}.thumbnail>img,.thumbnail a>img{margin-right:auto;margin-left:auto}a.thumbnail:hover,a.thumbnail:focus,a.thumbnail.active{border-color:#337ab7}.thumbnail .caption{padding:9px;color:#333}.alert{padding:15px;margin-bottom:20px;border:1px solid transparent;border-radius:4px}.alert h4{margin-top:0;color:inherit}.alert .alert-link{font-weight:700}.alert>p,.alert>ul{margin-bottom:0}.alert>p+p{margin-top:5px}.alert-dismissable,.alert-dismissible{padding-right:35px}.alert-dismissable .close,.alert-dismissible .close{position:relative;top:-2px;right:-21px;color:inherit}.alert-success{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.alert-success hr{border-top-color:#c9e2b3}.alert-success .alert-link{color:#2b542c}.alert-info{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.alert-info hr{border-top-color:#a6e1ec}.alert-info .alert-link{color:#245269}.alert-warning{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.alert-warning hr{border-top-color:#f7e1b5}.alert-warning .alert-link{color:#66512c}.alert-danger{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.alert-danger hr{border-top-color:#e4b9c0}.alert-danger .alert-link{color:#843534}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{height:20px;margin-bottom:20px;overflow:hidden;background-color:#f5f5f5;border-radius:4px;-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,.1);box-shadow:inset 0 1px 2px rgba(0,0,0,.1)}.progress-bar{float:left;width:0;height:100%;font-size:12px;line-height:20px;color:#fff;text-align:center;background-color:#337ab7;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);-webkit-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress-striped .progress-bar,.progress-bar-striped{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);-webkit-background-size:40px 40px;background-size:40px 40px}.progress.active .progress-bar,.progress-bar.active{-webkit-animation:progress-bar-stripes 2s linear infinite;-o-animation:progress-bar-stripes 2s linear infinite;animation:progress-bar-stripes 2s linear infinite}.progress-bar-success{background-color:#5cb85c}.progress-striped .progress-bar-success{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-info{background-color:#5bc0de}.progress-striped .progress-bar-info{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-warning{background-color:#f0ad4e}.progress-striped .progress-bar-warning{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-danger{background-color:#d9534f}.progress-striped .progress-bar-danger{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.media{margin-top:15px}.media:first-child{margin-top:0}.media-right,.media>.pull-right{padding-left:10px}.media-left,.media>.pull-left{padding-right:10px}.media-left,.media-right,.media-body{display:table-cell;vertical-align:top}.media-middle{vertical-align:middle}.media-bottom{vertical-align:bottom}.media-heading{margin-top:0;margin-bottom:5px}.media-list{padding-left:0;list-style:none}.list-group{padding-left:0;margin-bottom:20px}.list-group-item{position:relative;display:block;padding:10px 15px;margin-bottom:-1px;background-color:#fff;border:1px solid #ddd}.list-group-item:first-child{border-top-left-radius:4px;border-top-right-radius:4px}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:4px;border-bottom-left-radius:4px}a.list-group-item{color:#555}a.list-group-item .list-group-item-heading{color:#333}a.list-group-item:hover,a.list-group-item:focus{color:#555;text-decoration:none;background-color:#f5f5f5}.list-group-item.disabled,.list-group-item.disabled:hover,.list-group-item.disabled:focus{color:#777;cursor:not-allowed;background-color:#eee}.list-group-item.disabled .list-group-item-heading,.list-group-item.disabled:hover .list-group-item-heading,.list-group-item.disabled:focus .list-group-item-heading{color:inherit}.list-group-item.disabled .list-group-item-text,.list-group-item.disabled:hover .list-group-item-text,.list-group-item.disabled:focus .list-group-item-text{color:#777}.list-group-item.active,.list-group-item.active:hover,.list-group-item.active:focus{z-index:2;color:#fff;background-color:#337ab7;border-color:#337ab7}.list-group-item.active .list-group-item-heading,.list-group-item.active:hover .list-group-item-heading,.list-group-item.active:focus .list-group-item-heading,.list-group-item.active .list-group-item-heading>small,.list-group-item.active:hover .list-group-item-heading>small,.list-group-item.active:focus .list-group-item-heading>small,.list-group-item.active .list-group-item-heading>.small,.list-group-item.active:hover .list-group-item-heading>.small,.list-group-item.active:focus .list-group-item-heading>.small{color:inherit}.list-group-item.active .list-group-item-text,.list-group-item.active:hover .list-group-item-text,.list-group-item.active:focus .list-group-item-text{color:#c7ddef}.list-group-item-success{color:#3c763d;background-color:#dff0d8}a.list-group-item-success{color:#3c763d}a.list-group-item-success .list-group-item-heading{color:inherit}a.list-group-item-success:hover,a.list-group-item-success:focus{color:#3c763d;background-color:#d0e9c6}a.list-group-item-success.active,a.list-group-item-success.active:hover,a.list-group-item-success.active:focus{color:#fff;background-color:#3c763d;border-color:#3c763d}.list-group-item-info{color:#31708f;background-color:#d9edf7}a.list-group-item-info{color:#31708f}a.list-group-item-info .list-group-item-heading{color:inherit}a.list-group-item-info:hover,a.list-group-item-info:focus{color:#31708f;background-color:#c4e3f3}a.list-group-item-info.active,a.list-group-item-info.active:hover,a.list-group-item-info.active:focus{color:#fff;background-color:#31708f;border-color:#31708f}.list-group-item-warning{color:#8a6d3b;background-color:#fcf8e3}a.list-group-item-warning{color:#8a6d3b}a.list-group-item-warning .list-group-item-heading{color:inherit}a.list-group-item-warning:hover,a.list-group-item-warning:focus{color:#8a6d3b;background-color:#faf2cc}a.list-group-item-warning.active,a.list-group-item-warning.active:hover,a.list-group-item-warning.active:focus{color:#fff;background-color:#8a6d3b;border-color:#8a6d3b}.list-group-item-danger{color:#a94442;background-color:#f2dede}a.list-group-item-danger{color:#a94442}a.list-group-item-danger .list-group-item-heading{color:inherit}a.list-group-item-danger:hover,a.list-group-item-danger:focus{color:#a94442;background-color:#ebcccc}a.list-group-item-danger.active,a.list-group-item-danger.active:hover,a.list-group-item-danger.active:focus{color:#fff;background-color:#a94442;border-color:#a94442}.list-group-item-heading{margin-top:0;margin-bottom:5px}.list-group-item-text{margin-bottom:0;line-height:1.3}.panel{margin-bottom:20px;background-color:#fff;border:1px solid transparent;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}.panel-body{padding:15px}.panel-heading{padding:10px 15px;border-bottom:1px solid transparent;border-top-left-radius:3px;border-top-right-radius:3px}.panel-heading>.dropdown .dropdown-toggle{color:inherit}.panel-title{margin-top:0;margin-bottom:0;font-size:16px;color:inherit}.panel-title>a{color:inherit}.panel-footer{padding:10px 15px;background-color:#f5f5f5;border-top:1px solid #ddd;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.list-group,.panel>.panel-collapse>.list-group{margin-bottom:0}.panel>.list-group .list-group-item,.panel>.panel-collapse>.list-group .list-group-item{border-width:1px 0;border-radius:0}.panel>.list-group:first-child .list-group-item:first-child,.panel>.panel-collapse>.list-group:first-child .list-group-item:first-child{border-top:0;border-top-left-radius:3px;border-top-right-radius:3px}.panel>.list-group:last-child .list-group-item:last-child,.panel>.panel-collapse>.list-group:last-child .list-group-item:last-child{border-bottom:0;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel-heading+.list-group .list-group-item:first-child{border-top-width:0}.list-group+.panel-footer{border-top-width:0}.panel>.table,.panel>.table-responsive>.table,.panel>.panel-collapse>.table{margin-bottom:0}.panel>.table caption,.panel>.table-responsive>.table caption,.panel>.panel-collapse>.table caption{padding-right:15px;padding-left:15px}.panel>.table:first-child,.panel>.table-responsive:first-child>.table:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:first-child{border-top-left-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:last-child{border-top-right-radius:3px}.panel>.table:last-child,.panel>.table-responsive:last-child>.table:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:first-child{border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:last-child{border-bottom-right-radius:3px}.panel>.panel-body+.table,.panel>.panel-body+.table-responsive,.panel>.table+.panel-body,.panel>.table-responsive+.panel-body{border-top:1px solid #ddd}.panel>.table>tbody:first-child>tr:first-child th,.panel>.table>tbody:first-child>tr:first-child td{border-top:0}.panel>.table-bordered,.panel>.table-responsive>.table-bordered{border:0}.panel>.table-bordered>thead>tr>th:first-child,.panel>.table-responsive>.table-bordered>thead>tr>th:first-child,.panel>.table-bordered>tbody>tr>th:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:first-child,.panel>.table-bordered>tfoot>tr>th:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:first-child,.panel>.table-bordered>thead>tr>td:first-child,.panel>.table-responsive>.table-bordered>thead>tr>td:first-child,.panel>.table-bordered>tbody>tr>td:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:first-child,.panel>.table-bordered>tfoot>tr>td:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.panel>.table-bordered>thead>tr>th:last-child,.panel>.table-responsive>.table-bordered>thead>tr>th:last-child,.panel>.table-bordered>tbody>tr>th:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:last-child,.panel>.table-bordered>tfoot>tr>th:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:last-child,.panel>.table-bordered>thead>tr>td:last-child,.panel>.table-responsive>.table-bordered>thead>tr>td:last-child,.panel>.table-bordered>tbody>tr>td:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:last-child,.panel>.table-bordered>tfoot>tr>td:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.panel>.table-bordered>thead>tr:first-child>td,.panel>.table-responsive>.table-bordered>thead>tr:first-child>td,.panel>.table-bordered>tbody>tr:first-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>td,.panel>.table-bordered>thead>tr:first-child>th,.panel>.table-responsive>.table-bordered>thead>tr:first-child>th,.panel>.table-bordered>tbody>tr:first-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>th{border-bottom:0}.panel>.table-bordered>tbody>tr:last-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>td,.panel>.table-bordered>tfoot>tr:last-child>td,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>td,.panel>.table-bordered>tbody>tr:last-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>th,.panel>.table-bordered>tfoot>tr:last-child>th,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>th{border-bottom:0}.panel>.table-responsive{margin-bottom:0;border:0}.panel-group{margin-bottom:20px}.panel-group .panel{margin-bottom:0;border-radius:4px}.panel-group .panel+.panel{margin-top:5px}.panel-group .panel-heading{border-bottom:0}.panel-group .panel-heading+.panel-collapse>.panel-body,.panel-group .panel-heading+.panel-collapse>.list-group{border-top:1px solid #ddd}.panel-group .panel-footer{border-top:0}.panel-group .panel-footer+.panel-collapse .panel-body{border-bottom:1px solid #ddd}.panel-default{border-color:#ddd}.panel-default>.panel-heading{color:#333;background-color:#f5f5f5;border-color:#ddd}.panel-default>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ddd}.panel-default>.panel-heading .badge{color:#f5f5f5;background-color:#333}.panel-default>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ddd}.panel-primary{border-color:#337ab7}.panel-primary>.panel-heading{color:#fff;background-color:#337ab7;border-color:#337ab7}.panel-primary>.panel-heading+.panel-collapse>.panel-body{border-top-color:#337ab7}.panel-primary>.panel-heading .badge{color:#337ab7;background-color:#fff}.panel-primary>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#337ab7}.panel-success{border-color:#d6e9c6}.panel-success>.panel-heading{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.panel-success>.panel-heading+.panel-collapse>.panel-body{border-top-color:#d6e9c6}.panel-success>.panel-heading .badge{color:#dff0d8;background-color:#3c763d}.panel-success>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#d6e9c6}.panel-info{border-color:#bce8f1}.panel-info>.panel-heading{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.panel-info>.panel-heading+.panel-collapse>.panel-body{border-top-color:#bce8f1}.panel-info>.panel-heading .badge{color:#d9edf7;background-color:#31708f}.panel-info>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#bce8f1}.panel-warning{border-color:#faebcc}.panel-warning>.panel-heading{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.panel-warning>.panel-heading+.panel-collapse>.panel-body{border-top-color:#faebcc}.panel-warning>.panel-heading .badge{color:#fcf8e3;background-color:#8a6d3b}.panel-warning>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#faebcc}.panel-danger{border-color:#ebccd1}.panel-danger>.panel-heading{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.panel-danger>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ebccd1}.panel-danger>.panel-heading .badge{color:#f2dede;background-color:#a94442}.panel-danger>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ebccd1}.embed-responsive{position:relative;display:block;height:0;padding:0;overflow:hidden}.embed-responsive .embed-responsive-item,.embed-responsive iframe,.embed-responsive embed,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive.embed-responsive-16by9{padding-bottom:56.25%}.embed-responsive.embed-responsive-4by3{padding-bottom:75%}.well{min-height:20px;padding:19px;margin-bottom:20px;background-color:#f5f5f5;border:1px solid #e3e3e3;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.05);box-shadow:inset 0 1px 1px rgba(0,0,0,.05)}.well blockquote{border-color:#ddd;border-color:rgba(0,0,0,.15)}.well-lg{padding:24px;border-radius:6px}.well-sm{padding:9px;border-radius:3px}.close{float:right;font-size:21px;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;filter:alpha(opacity=20);opacity:.2}.close:hover,.close:focus{color:#000;text-decoration:none;cursor:pointer;filter:alpha(opacity=50);opacity:.5}button.close{-webkit-appearance:none;padding:0;cursor:pointer;background:0 0;border:0}.modal-open{overflow:hidden}.modal{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;display:none;overflow:hidden;-webkit-overflow-scrolling:touch;outline:0}.modal.fade .modal-dialog{-webkit-transition:-webkit-transform .3s ease-out;-o-transition:-o-transform .3s ease-out;transition:transform .3s ease-out;-webkit-transform:translate(0,-25%);-ms-transform:translate(0,-25%);-o-transform:translate(0,-25%);transform:translate(0,-25%)}.modal.in .modal-dialog{-webkit-transform:translate(0,0);-ms-transform:translate(0,0);-o-transform:translate(0,0);transform:translate(0,0)}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal-dialog{position:relative;width:auto;margin:10px}.modal-content{position:relative;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #999;border:1px solid rgba(0,0,0,.2);border-radius:6px;outline:0;-webkit-box-shadow:0 3px 9px rgba(0,0,0,.5);box-shadow:0 3px 9px rgba(0,0,0,.5)}.modal-backdrop{position:absolute;top:0;right:0;left:0;background-color:#000}.modal-backdrop.fade{filter:alpha(opacity=0);opacity:0}.modal-backdrop.in{filter:alpha(opacity=50);opacity:.5}.modal-header{min-height:16.43px;padding:15px;border-bottom:1px solid #e5e5e5}.modal-header .close{margin-top:-2px}.modal-title{margin:0;line-height:1.42857143}.modal-body{position:relative;padding:15px}.modal-footer{padding:15px;text-align:right;border-top:1px solid #e5e5e5}.modal-footer .btn+.btn{margin-bottom:0;margin-left:5px}.modal-footer .btn-group .btn+.btn{margin-left:-1px}.modal-footer .btn-block+.btn-block{margin-left:0}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:768px){.modal-dialog{width:600px;margin:30px auto}.modal-content{-webkit-box-shadow:0 5px 15px rgba(0,0,0,.5);box-shadow:0 5px 15px rgba(0,0,0,.5)}.modal-sm{width:300px}}@media (min-width:992px){.modal-lg{width:900px}}.tooltip{position:absolute;z-index:1070;display:block;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:12px;font-weight:400;line-height:1.4;visibility:visible;filter:alpha(opacity=0);opacity:0}.tooltip.in{filter:alpha(opacity=90);opacity:.9}.tooltip.top{padding:5px 0;margin-top:-3px}.tooltip.right{padding:0 5px;margin-left:3px}.tooltip.bottom{padding:5px 0;margin-top:3px}.tooltip.left{padding:0 5px;margin-left:-3px}.tooltip-inner{max-width:200px;padding:3px 8px;color:#fff;text-align:center;text-decoration:none;background-color:#000;border-radius:4px}.tooltip-arrow{position:absolute;width:0;height:0;border-color:transparent;border-style:solid}.tooltip.top .tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-left .tooltip-arrow{right:5px;bottom:0;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-right .tooltip-arrow{bottom:0;left:5px;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.right .tooltip-arrow{top:50%;left:0;margin-top:-5px;border-width:5px 5px 5px 0;border-right-color:#000}.tooltip.left .tooltip-arrow{top:50%;right:0;margin-top:-5px;border-width:5px 0 5px 5px;border-left-color:#000}.tooltip.bottom .tooltip-arrow{top:0;left:50%;margin-left:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-left .tooltip-arrow{top:0;right:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-right .tooltip-arrow{top:0;left:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.popover{position:absolute;top:0;left:0;z-index:1060;display:none;max-width:276px;padding:1px;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;font-weight:400;line-height:1.42857143;text-align:left;white-space:normal;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,.2);border-radius:6px;-webkit-box-shadow:0 5px 10px rgba(0,0,0,.2);box-shadow:0 5px 10px rgba(0,0,0,.2)}.popover.top{margin-top:-10px}.popover.right{margin-left:10px}.popover.bottom{margin-top:10px}.popover.left{margin-left:-10px}.popover-title{padding:8px 14px;margin:0;font-size:14px;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-radius:5px 5px 0 0}.popover-content{padding:9px 14px}.popover>.arrow,.popover>.arrow:after{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover>.arrow{border-width:11px}.popover>.arrow:after{content:"";border-width:10px}.popover.top>.arrow{bottom:-11px;left:50%;margin-left:-11px;border-top-color:#999;border-top-color:rgba(0,0,0,.25);border-bottom-width:0}.popover.top>.arrow:after{bottom:1px;margin-left:-10px;content:" ";border-top-color:#fff;border-bottom-width:0}.popover.right>.arrow{top:50%;left:-11px;margin-top:-11px;border-right-color:#999;border-right-color:rgba(0,0,0,.25);border-left-width:0}.popover.right>.arrow:after{bottom:-10px;left:1px;content:" ";border-right-color:#fff;border-left-width:0}.popover.bottom>.arrow{top:-11px;left:50%;margin-left:-11px;border-top-width:0;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,.25)}.popover.bottom>.arrow:after{top:1px;margin-left:-10px;content:" ";border-top-width:0;border-bottom-color:#fff}.popover.left>.arrow{top:50%;right:-11px;margin-top:-11px;border-right-width:0;border-left-color:#999;border-left-color:rgba(0,0,0,.25)}.popover.left>.arrow:after{right:1px;bottom:-10px;content:" ";border-right-width:0;border-left-color:#fff}.carousel{position:relative}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-inner>.item{position:relative;display:none;-webkit-transition:.6s ease-in-out left;-o-transition:.6s ease-in-out left;transition:.6s ease-in-out left}.carousel-inner>.item>img,.carousel-inner>.item>a>img{line-height:1}@media all and (transform-3d),(-webkit-transform-3d){.carousel-inner>.item{-webkit-transition:-webkit-transform .6s ease-in-out;-o-transition:-o-transform .6s ease-in-out;transition:transform .6s ease-in-out;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-perspective:1000;perspective:1000}.carousel-inner>.item.next,.carousel-inner>.item.active.right{left:0;-webkit-transform:translate3d(100%,0,0);transform:translate3d(100%,0,0)}.carousel-inner>.item.prev,.carousel-inner>.item.active.left{left:0;-webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0)}.carousel-inner>.item.next.left,.carousel-inner>.item.prev.right,.carousel-inner>.item.active{left:0;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}}.carousel-inner>.active,.carousel-inner>.next,.carousel-inner>.prev{display:block}.carousel-inner>.active{left:0}.carousel-inner>.next,.carousel-inner>.prev{position:absolute;top:0;width:100%}.carousel-inner>.next{left:100%}.carousel-inner>.prev{left:-100%}.carousel-inner>.next.left,.carousel-inner>.prev.right{left:0}.carousel-inner>.active.left{left:-100%}.carousel-inner>.active.right{left:100%}.carousel-control{position:absolute;top:0;bottom:0;left:0;width:15%;font-size:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6);filter:alpha(opacity=50);opacity:.5}.carousel-control.left{background-image:-webkit-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,.0001)));background-image:linear-gradient(to right,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=''#80000000'', endColorstr=''#00000000'', GradientType=1);background-repeat:repeat-x}.carousel-control.right{right:0;left:auto;background-image:-webkit-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.0001)),to(rgba(0,0,0,.5)));background-image:linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=''#00000000'', endColorstr=''#80000000'', GradientType=1);background-repeat:repeat-x}.carousel-control:hover,.carousel-control:focus{color:#fff;text-decoration:none;filter:alpha(opacity=90);outline:0;opacity:.9}.carousel-control .icon-prev,.carousel-control .icon-next,.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right{position:absolute;top:50%;z-index:5;display:inline-block}.carousel-control .icon-prev,.carousel-control .glyphicon-chevron-left{left:50%;margin-left:-10px}.carousel-control .icon-next,.carousel-control .glyphicon-chevron-right{right:50%;margin-right:-10px}.carousel-control .icon-prev,.carousel-control .icon-next{width:20px;height:20px;margin-top:-10px;font-family:serif}.carousel-control .icon-prev:before{content:''\\2039''}.carousel-control .icon-next:before{content:''\\203a''}.carousel-indicators{position:absolute;bottom:10px;left:50%;z-index:15;width:60%;padding-left:0;margin-left:-30%;text-align:center;list-style:none}.carousel-indicators li{display:inline-block;width:10px;height:10px;margin:1px;text-indent:-999px;cursor:pointer;background-color:#000 \\9;background-color:rgba(0,0,0,0);border:1px solid #fff;border-radius:10px}.carousel-indicators .active{width:12px;height:12px;margin:0;background-color:#fff}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6)}.carousel-caption .btn{text-shadow:none}@media screen and (min-width:768px){.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right,.carousel-control .icon-prev,.carousel-control .icon-next{width:30px;height:30px;margin-top:-15px;font-size:30px}.carousel-control .glyphicon-chevron-left,.carousel-control .icon-prev{margin-left:-15px}.carousel-control .glyphicon-chevron-right,.carousel-control .icon-next{margin-right:-15px}.carousel-caption{right:20%;left:20%;padding-bottom:30px}.carousel-indicators{bottom:20px}}.clearfix:before,.clearfix:after,.dl-horizontal dd:before,.dl-horizontal dd:after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after,.form-horizontal .form-group:before,.form-horizontal .form-group:after,.btn-toolbar:before,.btn-toolbar:after,.btn-group-vertical>.btn-group:before,.btn-group-vertical>.btn-group:after,.nav:before,.nav:after,.navbar:before,.navbar:after,.navbar-header:before,.navbar-header:after,.navbar-collapse:before,.navbar-collapse:after,.pager:before,.pager:after,.panel-body:before,.panel-body:after,.modal-footer:before,.modal-footer:after{display:table;content:" "}.clearfix:after,.dl-horizontal dd:after,.container:after,.container-fluid:after,.row:after,.form-horizontal .form-group:after,.btn-toolbar:after,.btn-group-vertical>.btn-group:after,.nav:after,.navbar:after,.navbar-header:after,.navbar-collapse:after,.pager:after,.panel-body:after,.modal-footer:after{clear:both}.center-block{display:block;margin-right:auto;margin-left:auto}.pull-right{float:right!important}.pull-left{float:left!important}.hide{display:none!important}.show{display:block!important}.invisible{visibility:hidden}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.hidden{display:none!important;visibility:hidden!important}.affix{position:fixed}@-ms-viewport{width:device-width}.visible-xs,.visible-sm,.visible-md,.visible-lg{display:none!important}.visible-xs-block,.visible-xs-inline,.visible-xs-inline-block,.visible-sm-block,.visible-sm-inline,.visible-sm-inline-block,.visible-md-block,.visible-md-inline,.visible-md-inline-block,.visible-lg-block,.visible-lg-inline,.visible-lg-inline-block{display:none!important}@media (max-width:767px){.visible-xs{display:block!important}table.visible-xs{display:table}tr.visible-xs{display:table-row!important}th.visible-xs,td.visible-xs{display:table-cell!important}}@media (max-width:767px){.visible-xs-block{display:block!important}}@media (max-width:767px){.visible-xs-inline{display:inline!important}}@media (max-width:767px){.visible-xs-inline-block{display:inline-block!important}}@media (min-width:768px) and (max-width:991px){.visible-sm{display:block!important}table.visible-sm{display:table}tr.visible-sm{display:table-row!important}th.visible-sm,td.visible-sm{display:table-cell!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-block{display:block!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline{display:inline!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline-block{display:inline-block!important}}@media (min-width:992px) and (max-width:1199px){.visible-md{display:block!important}table.visible-md{display:table}tr.visible-md{display:table-row!important}th.visible-md,td.visible-md{display:table-cell!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-block{display:block!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline{display:inline!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline-block{display:inline-block!important}}@media (min-width:1200px){.visible-lg{display:block!important}table.visible-lg{display:table}tr.visible-lg{display:table-row!important}th.visible-lg,td.visible-lg{display:table-cell!important}}@media (min-width:1200px){.visible-lg-block{display:block!important}}@media (min-width:1200px){.visible-lg-inline{display:inline!important}}@media (min-width:1200px){.visible-lg-inline-block{display:inline-block!important}}@media (max-width:767px){.hidden-xs{display:none!important}}@media (min-width:768px) and (max-width:991px){.hidden-sm{display:none!important}}@media (min-width:992px) and (max-width:1199px){.hidden-md{display:none!important}}@media (min-width:1200px){.hidden-lg{display:none!important}}.visible-print{display:none!important}@media print{.visible-print{display:block!important}table.visible-print{display:table}tr.visible-print{display:table-row!important}th.visible-print,td.visible-print{display:table-cell!important}}.visible-print-block{display:none!important}@media print{.visible-print-block{display:block!important}}.visible-print-inline{display:none!important}@media print{.visible-print-inline{display:inline!important}}.visible-print-inline-block{display:none!important}@media print{.visible-print-inline-block{display:inline-block!important}}@media print{.hidden-print{display:none!important}}\r\n/*!\n * bootstrap-select v1.5.4\n * http://silviomoreto.github.io/bootstrap-select/\n *\n * Copyright 2013 bootstrap-select\n * Licensed under the MIT license\n */.bootstrap-select.btn-group:not(.input-group-btn),.bootstrap-select.btn-group[class*="span"]{float:none;display:inline-block;margin-bottom:10px;margin-left:0}.form-search .bootstrap-select.btn-group,.form-inline .bootstrap-select.btn-group,.form-horizontal .bootstrap-select.btn-group{margin-bottom:0}.bootstrap-select.form-control{margin-bottom:0;padding:0;border:0}.bootstrap-select.btn-group.pull-right,.bootstrap-select.btn-group[class*="span"].pull-right,.row-fluid .bootstrap-select.btn-group[class*="span"].pull-right{float:right}.input-append .bootstrap-select.btn-group{margin-left:-1px}.input-prepend .bootstrap-select.btn-group{margin-right:-1px}.bootstrap-select:not([class*="span"]):not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn){width:220px}.bootstrap-select{width:220px\\0}.bootstrap-select.form-control:not([class*="span"]){width:100%}.bootstrap-select>.btn{width:100%;padding-right:25px}.error .bootstrap-select .btn{border:1px solid #b94a48}.bootstrap-select.show-menu-arrow.open>.btn{z-index:2051}.bootstrap-select .btn:focus{outline:thin dotted #333 !important;outline:5px auto -webkit-focus-ring-color !important;outline-offset:-2px}.bootstrap-select.btn-group .btn .filter-option{display:inline-block;overflow:hidden;width:100%;float:left;text-align:left}.bootstrap-select.btn-group .btn .caret{position:absolute;top:50%;right:12px;margin-top:-2px;vertical-align:middle}.bootstrap-select.btn-group>.disabled,.bootstrap-select.btn-group .dropdown-menu li.disabled>a{cursor:not-allowed}.bootstrap-select.btn-group>.disabled:focus{outline:none !important}.bootstrap-select.btn-group[class*="span"] .btn{width:100%}.bootstrap-select.btn-group .dropdown-menu{min-width:100%;z-index:2000;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.bootstrap-select.btn-group .dropdown-menu.inner{position:static;border:0;padding:0;margin:0;-webkit-border-radius:0;-moz-border-radius:0;border-radius:0;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.bootstrap-select.btn-group .dropdown-menu dt{display:block;padding:3px 20px;cursor:default}.bootstrap-select.btn-group .div-contain{overflow:hidden}.bootstrap-select.btn-group .dropdown-menu li{position:relative}.bootstrap-select.btn-group .dropdown-menu li>a.opt{position:relative;padding-left:35px}.bootstrap-select.btn-group .dropdown-menu li>a{cursor:pointer}.bootstrap-select.btn-group .dropdown-menu li>dt small{font-weight:normal}.bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a i.check-mark{position:absolute;display:inline-block;right:15px;margin-top:2.5px}.bootstrap-select.btn-group .dropdown-menu li a i.check-mark{display:none}.bootstrap-select.btn-group.show-tick .dropdown-menu li a span.text{margin-right:34px}.bootstrap-select.btn-group .dropdown-menu li small{padding-left:.5em}.bootstrap-select.btn-group .dropdown-menu li:not(.disabled)>a:hover small,.bootstrap-select.btn-group .dropdown-menu li:not(.disabled)>a:focus small,.bootstrap-select.btn-group .dropdown-menu li.active:not(.disabled)>a small{color:#64b1d8;color:rgba(255,255,255,0.4)}.bootstrap-select.btn-group .dropdown-menu li>dt small{font-weight:normal}.bootstrap-select.show-menu-arrow .dropdown-toggle:before{content:'''';display:inline-block;border-left:7px solid transparent;border-right:7px solid transparent;border-bottom:7px solid #CCC;border-bottom-color:rgba(0,0,0,0.2);position:absolute;bottom:-4px;left:9px;display:none}.bootstrap-select.show-menu-arrow .dropdown-toggle:after{content:'''';display:inline-block;border-left:6px solid transparent;border-right:6px solid transparent;border-bottom:6px solid white;position:absolute;bottom:-4px;left:10px;display:none}.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:before{bottom:auto;top:-3px;border-top:7px solid #ccc;border-bottom:0;border-top-color:rgba(0,0,0,0.2)}.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:after{bottom:auto;top:-3px;border-top:6px solid #fff;border-bottom:0}.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:before{right:12px;left:auto}.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:after{right:13px;left:auto}.bootstrap-select.show-menu-arrow.open>.dropdown-toggle:before,.bootstrap-select.show-menu-arrow.open>.dropdown-toggle:after{display:block}.bootstrap-select.btn-group .no-results{padding:3px;background:#f5f5f5;margin:0 5px}.bootstrap-select.btn-group .dropdown-menu .notify{position:absolute;bottom:5px;width:96%;margin:0 2%;min-height:26px;padding:3px 5px;background:#f5f5f5;border:1px solid #e3e3e3;box-shadow:inset 0 1px 1px rgba(0,0,0,0.05);pointer-events:none;opacity:.9;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.mobile-device{position:absolute;top:0;left:0;display:block !important;width:100%;height:100% !important;opacity:0}.bootstrap-select.fit-width{width:auto !important}.bootstrap-select.btn-group.fit-width .btn .filter-option{position:static}.bootstrap-select.btn-group.fit-width .btn .caret{position:static;top:auto;margin-top:-1px}.control-group.error .bootstrap-select .dropdown-toggle{border-color:#b94a48}.bootstrap-select-searchbox,.bootstrap-select .bs-actionsbox{padding:4px 8px}.bootstrap-select .bs-actionsbox{float:left;width:100%;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.bootstrap-select-searchbox+.bs-actionsbox{padding:0 8px 4px}.bootstrap-select-searchbox input{margin-bottom:0}.bootstrap-select .bs-actionsbox .btn-group button{width:50%}\r\n@font-face{font-family:''footable'';src:url(''{T_THEME_PATH}/footable/css/fonts/footable.eot'');src:url(''{T_THEME_PATH}/footable/css/fonts/footable.eot?#iefix'') format(''embedded-opentype''),url(''{T_THEME_PATH}/footable/css/fonts/footable.woff'') format(''woff''),url(''{T_THEME_PATH}/footable/css/fonts/footable.ttf'') format(''truetype''),url(''{T_THEME_PATH}/footable/css/fonts/footable.svg#footable'') format(''svg'');font-weight:normal;font-style:normal}.footable{width:100%}.footable.breakpoint>tbody>tr.footable-detail-show>td{border-bottom:0}.footable.breakpoint>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e001"}.footable.breakpoint>tbody>tr:hover:not(.footable-row-detail){cursor:pointer}.footable.breakpoint>tbody>tr>td.footable-cell-detail{background:#eee;border-top:0}.footable.breakpoint>tbody>tr>td>span.footable-toggle{display:inline-block;font-family:''footable'';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;-webkit-font-smoothing:antialiased;padding-right:5px;font-size:14px;color:#888}.footable.breakpoint>tbody>tr>td>span.footable-toggle:before{content:"\\e000"}.footable.breakpoint.toggle-circle>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e005"}.footable.breakpoint.toggle-circle>tbody>tr>td>span.footable-toggle:before{content:"\\e004"}.footable.breakpoint.toggle-circle-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e003"}.footable.breakpoint.toggle-circle-filled>tbody>tr>td>span.footable-toggle:before{content:"\\e002"}.footable.breakpoint.toggle-square>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e007"}.footable.breakpoint.toggle-square>tbody>tr>td>span.footable-toggle:before{content:"\\e006"}.footable.breakpoint.toggle-square-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e009"}.footable.breakpoint.toggle-square-filled>tbody>tr>td>span.footable-toggle:before{content:"\\e008"}.footable.breakpoint.toggle-arrow>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e00f"}.footable.breakpoint.toggle-arrow>tbody>tr>td>span.footable-toggle:before{content:"\\e011"}.footable.breakpoint.toggle-arrow-small>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e013"}.footable.breakpoint.toggle-arrow-small>tbody>tr>td>span.footable-toggle:before{content:"\\e015"}.footable.breakpoint.toggle-arrow-circle>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e01b"}.footable.breakpoint.toggle-arrow-circle>tbody>tr>td>span.footable-toggle:before{content:"\\e01d"}.footable.breakpoint.toggle-arrow-circle-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e00b"}.footable.breakpoint.toggle-arrow-circle-filled>tbody>tr>td>span.footable-toggle:before{content:"\\e00d"}.footable.breakpoint.toggle-arrow-tiny>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e01f"}.footable.breakpoint.toggle-arrow-tiny>tbody>tr>td>span.footable-toggle:before{content:"\\e021"}.footable.breakpoint.toggle-arrow-alt>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\\e017"}.footable.breakpoint.toggle-arrow-alt>tbody>tr>td>span.footable-toggle:before{content:"\\e019"}.footable.breakpoint.toggle-medium>tbody>tr>td>span.footable-toggle{font-size:18px}.footable.breakpoint.toggle-large>tbody>tr>td>span.footable-toggle{font-size:24px}.footable>thead>tr>th{-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:-moz-none;-ms-user-select:none;user-select:none}.footable>thead>tr>th.footable-sortable:hover{cursor:pointer}.footable>thead>tr>th.footable-sorted>span.footable-sort-indicator:before{content:"\\e013"}.footable>thead>tr>th.footable-sorted-desc>span.footable-sort-indicator:before{content:"\\e012"}.footable>thead>tr>th>span.footable-sort-indicator{display:inline-block;font-family:''footable'';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;-webkit-font-smoothing:antialiased;padding-left:5px}.footable>thead>tr>th>span.footable-sort-indicator:before{content:"\\e022"}.footable>tfoot .pagination{margin:0}.footable.no-paging .hide-if-no-paging{display:none}.footable-row-detail-inner{display:table}.footable-row-detail-row{display:table-row;line-height:1.5em}.footable-row-detail-group{display:block;line-height:2em;font-size:1.2em;font-weight:bold}.footable-row-detail-name{display:table-cell;font-weight:bold;padding-right:.5em}.footable-row-detail-value{display:table-cell}.footable-odd{background-color:#f7f7f7}\r\n/*!\n *  Font Awesome 4.1.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:''FontAwesome'';src:url(''{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.eot?v=4.1.0'');src:url(''{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.1.0'') format(''embedded-opentype''),url(''{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.woff?v=4.1.0'') format(''woff''),url(''{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.ttf?v=4.1.0'') format(''truetype''),url(''{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.svg?v=4.1.0#fontawesomeregular'') format(''svg'');font-weight:normal;font-style:normal}.fa{display:inline-block;font-family:FontAwesome;font-style:normal;font-weight:normal;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:spin 2s infinite linear;-moz-animation:spin 2s infinite linear;-o-animation:spin 2s infinite linear;animation:spin 2s infinite linear}@-moz-keyframes spin{0%{-moz-transform:rotate(0deg)}100%{-moz-transform:rotate(359deg)}}@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg)}}@-o-keyframes spin{0%{-o-transform:rotate(0deg)}100%{-o-transform:rotate(359deg)}}@keyframes spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1);-webkit-transform:rotate(90deg);-moz-transform:rotate(90deg);-ms-transform:rotate(90deg);-o-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2);-webkit-transform:rotate(180deg);-moz-transform:rotate(180deg);-ms-transform:rotate(180deg);-o-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);-webkit-transform:rotate(270deg);-moz-transform:rotate(270deg);-ms-transform:rotate(270deg);-o-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1);-webkit-transform:scale(-1, 1);-moz-transform:scale(-1, 1);-ms-transform:scale(-1, 1);-o-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1);-webkit-transform:scale(1, -1);-moz-transform:scale(1, -1);-ms-transform:scale(1, -1);-o-transform:scale(1, -1);transform:scale(1, -1)}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\\f000"}.fa-music:before{content:"\\f001"}.fa-search:before{content:"\\f002"}.fa-envelope-o:before{content:"\\f003"}.fa-heart:before{content:"\\f004"}.fa-star:before{content:"\\f005"}.fa-star-o:before{content:"\\f006"}.fa-user:before{content:"\\f007"}.fa-film:before{content:"\\f008"}.fa-th-large:before{content:"\\f009"}.fa-th:before{content:"\\f00a"}.fa-th-list:before{content:"\\f00b"}.fa-check:before{content:"\\f00c"}.fa-times:before{content:"\\f00d"}.fa-search-plus:before{content:"\\f00e"}.fa-search-minus:before{content:"\\f010"}.fa-power-off:before{content:"\\f011"}.fa-signal:before{content:"\\f012"}.fa-gear:before,.fa-cog:before{content:"\\f013"}.fa-trash-o:before{content:"\\f014"}.fa-home:before{content:"\\f015"}.fa-file-o:before{content:"\\f016"}.fa-clock-o:before{content:"\\f017"}.fa-road:before{content:"\\f018"}.fa-download:before{content:"\\f019"}.fa-arrow-circle-o-down:before{content:"\\f01a"}.fa-arrow-circle-o-up:before{content:"\\f01b"}.fa-inbox:before{content:"\\f01c"}.fa-play-circle-o:before{content:"\\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\\f01e"}.fa-refresh:before{content:"\\f021"}.fa-list-alt:before{content:"\\f022"}.fa-lock:before{content:"\\f023"}.fa-flag:before{content:"\\f024"}.fa-headphones:before{content:"\\f025"}.fa-volume-off:before{content:"\\f026"}.fa-volume-down:before{content:"\\f027"}.fa-volume-up:before{content:"\\f028"}.fa-qrcode:before{content:"\\f029"}.fa-barcode:before{content:"\\f02a"}.fa-tag:before{content:"\\f02b"}.fa-tags:before{content:"\\f02c"}.fa-book:before{content:"\\f02d"}.fa-bookmark:before{content:"\\f02e"}.fa-print:before{content:"\\f02f"}.fa-camera:before{content:"\\f030"}.fa-font:before{content:"\\f031"}.fa-bold:before{content:"\\f032"}.fa-italic:before{content:"\\f033"}.fa-text-height:before{content:"\\f034"}.fa-text-width:before{content:"\\f035"}.fa-align-left:before{content:"\\f036"}.fa-align-center:before{content:"\\f037"}.fa-align-right:before{content:"\\f038"}.fa-align-justify:before{content:"\\f039"}.fa-list:before{content:"\\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\\f03b"}.fa-indent:before{content:"\\f03c"}.fa-video-camera:before{content:"\\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\\f03e"}.fa-pencil:before{content:"\\f040"}.fa-map-marker:before{content:"\\f041"}.fa-adjust:before{content:"\\f042"}.fa-tint:before{content:"\\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\\f044"}.fa-share-square-o:before{content:"\\f045"}.fa-check-square-o:before{content:"\\f046"}.fa-arrows:before{content:"\\f047"}.fa-step-backward:before{content:"\\f048"}.fa-fast-backward:before{content:"\\f049"}.fa-backward:before{content:"\\f04a"}.fa-play:before{content:"\\f04b"}.fa-pause:before{content:"\\f04c"}.fa-stop:before{content:"\\f04d"}.fa-forward:before{content:"\\f04e"}.fa-fast-forward:before{content:"\\f050"}.fa-step-forward:before{content:"\\f051"}.fa-eject:before{content:"\\f052"}.fa-chevron-left:before{content:"\\f053"}.fa-chevron-right:before{content:"\\f054"}.fa-plus-circle:before{content:"\\f055"}.fa-minus-circle:before{content:"\\f056"}.fa-times-circle:before{content:"\\f057"}.fa-check-circle:before{content:"\\f058"}.fa-question-circle:before{content:"\\f059"}.fa-info-circle:before{content:"\\f05a"}.fa-crosshairs:before{content:"\\f05b"}.fa-times-circle-o:before{content:"\\f05c"}.fa-check-circle-o:before{content:"\\f05d"}.fa-ban:before{content:"\\f05e"}.fa-arrow-left:before{content:"\\f060"}.fa-arrow-right:before{content:"\\f061"}.fa-arrow-up:before{content:"\\f062"}.fa-arrow-down:before{content:"\\f063"}.fa-mail-forward:before,.fa-share:before{content:"\\f064"}.fa-expand:before{content:"\\f065"}.fa-compress:before{content:"\\f066"}.fa-plus:before{content:"\\f067"}.fa-minus:before{content:"\\f068"}.fa-asterisk:before{content:"\\f069"}.fa-exclamation-circle:before{content:"\\f06a"}.fa-gift:before{content:"\\f06b"}.fa-leaf:before{content:"\\f06c"}.fa-fire:before{content:"\\f06d"}.fa-eye:before{content:"\\f06e"}.fa-eye-slash:before{content:"\\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\\f071"}.fa-plane:before{content:"\\f072"}.fa-calendar:before{content:"\\f073"}.fa-random:before{content:"\\f074"}.fa-comment:before{content:"\\f075"}.fa-magnet:before{content:"\\f076"}.fa-chevron-up:before{content:"\\f077"}.fa-chevron-down:before{content:"\\f078"}.fa-retweet:before{content:"\\f079"}.fa-shopping-cart:before{content:"\\f07a"}.fa-folder:before{content:"\\f07b"}.fa-folder-open:before{content:"\\f07c"}.fa-arrows-v:before{content:"\\f07d"}.fa-arrows-h:before{content:"\\f07e"}.fa-bar-chart-o:before{content:"\\f080"}.fa-twitter-square:before{content:"\\f081"}.fa-facebook-square:before{content:"\\f082"}.fa-camera-retro:before{content:"\\f083"}.fa-key:before{content:"\\f084"}.fa-gears:before,.fa-cogs:before{content:"\\f085"}.fa-comments:before{content:"\\f086"}.fa-thumbs-o-up:before{content:"\\f087"}.fa-thumbs-o-down:before{content:"\\f088"}.fa-star-half:before{content:"\\f089"}.fa-heart-o:before{content:"\\f08a"}.fa-sign-out:before{content:"\\f08b"}.fa-linkedin-square:before{content:"\\f08c"}.fa-thumb-tack:before{content:"\\f08d"}.fa-external-link:before{content:"\\f08e"}.fa-sign-in:before{content:"\\f090"}.fa-trophy:before{content:"\\f091"}.fa-github-square:before{content:"\\f092"}.fa-upload:before{content:"\\f093"}.fa-lemon-o:before{content:"\\f094"}.fa-phone:before{content:"\\f095"}.fa-square-o:before{content:"\\f096"}.fa-bookmark-o:before{content:"\\f097"}.fa-phone-square:before{content:"\\f098"}.fa-twitter:before{content:"\\f099"}.fa-facebook:before{content:"\\f09a"}.fa-github:before{content:"\\f09b"}.fa-unlock:before{content:"\\f09c"}.fa-credit-card:before{content:"\\f09d"}.fa-rss:before{content:"\\f09e"}.fa-hdd-o:before{content:"\\f0a0"}.fa-bullhorn:before{content:"\\f0a1"}.fa-bell:before{content:"\\f0f3"}.fa-certificate:before{content:"\\f0a3"}.fa-hand-o-right:before{content:"\\f0a4"}.fa-hand-o-left:before{content:"\\f0a5"}.fa-hand-o-up:before{content:"\\f0a6"}.fa-hand-o-down:before{content:"\\f0a7"}.fa-arrow-circle-left:before{content:"\\f0a8"}.fa-arrow-circle-right:before{content:"\\f0a9"}.fa-arrow-circle-up:before{content:"\\f0aa"}.fa-arrow-circle-down:before{content:"\\f0ab"}.fa-globe:before{content:"\\f0ac"}.fa-wrench:before{content:"\\f0ad"}.fa-tasks:before{content:"\\f0ae"}.fa-filter:before{content:"\\f0b0"}.fa-briefcase:before{content:"\\f0b1"}.fa-arrows-alt:before{content:"\\f0b2"}.fa-group:before,.fa-users:before{content:"\\f0c0"}.fa-chain:before,.fa-link:before{content:"\\f0c1"}.fa-cloud:before{content:"\\f0c2"}.fa-flask:before{content:"\\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\\f0c5"}.fa-paperclip:before{content:"\\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\\f0c7"}.fa-square:before{content:"\\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\\f0c9"}.fa-list-ul:before{content:"\\f0ca"}.fa-list-ol:before{content:"\\f0cb"}.fa-strikethrough:before{content:"\\f0cc"}.fa-underline:before{content:"\\f0cd"}.fa-table:before{content:"\\f0ce"}.fa-magic:before{content:"\\f0d0"}.fa-truck:before{content:"\\f0d1"}.fa-pinterest:before{content:"\\f0d2"}.fa-pinterest-square:before{content:"\\f0d3"}.fa-google-plus-square:before{content:"\\f0d4"}.fa-google-plus:before{content:"\\f0d5"}.fa-money:before{content:"\\f0d6"}.fa-caret-down:before{content:"\\f0d7"}.fa-caret-up:before{content:"\\f0d8"}.fa-caret-left:before{content:"\\f0d9"}.fa-caret-right:before{content:"\\f0da"}.fa-columns:before{content:"\\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\\f0de"}.fa-envelope:before{content:"\\f0e0"}.fa-linkedin:before{content:"\\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\\f0e4"}.fa-comment-o:before{content:"\\f0e5"}.fa-comments-o:before{content:"\\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\\f0e7"}.fa-sitemap:before{content:"\\f0e8"}.fa-umbrella:before{content:"\\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\\f0ea"}.fa-lightbulb-o:before{content:"\\f0eb"}.fa-exchange:before{content:"\\f0ec"}.fa-cloud-download:before{content:"\\f0ed"}.fa-cloud-upload:before{content:"\\f0ee"}.fa-user-md:before{content:"\\f0f0"}.fa-stethoscope:before{content:"\\f0f1"}.fa-suitcase:before{content:"\\f0f2"}.fa-bell-o:before{content:"\\f0a2"}.fa-coffee:before{content:"\\f0f4"}.fa-cutlery:before{content:"\\f0f5"}.fa-file-text-o:before{content:"\\f0f6"}.fa-building-o:before{content:"\\f0f7"}.fa-hospital-o:before{content:"\\f0f8"}.fa-ambulance:before{content:"\\f0f9"}.fa-medkit:before{content:"\\f0fa"}.fa-fighter-jet:before{content:"\\f0fb"}.fa-beer:before{content:"\\f0fc"}.fa-h-square:before{content:"\\f0fd"}.fa-plus-square:before{content:"\\f0fe"}.fa-angle-double-left:before{content:"\\f100"}.fa-angle-double-right:before{content:"\\f101"}.fa-angle-double-up:before{content:"\\f102"}.fa-angle-double-down:before{content:"\\f103"}.fa-angle-left:before{content:"\\f104"}.fa-angle-right:before{content:"\\f105"}.fa-angle-up:before{content:"\\f106"}.fa-angle-down:before{content:"\\f107"}.fa-desktop:before{content:"\\f108"}.fa-laptop:before{content:"\\f109"}.fa-tablet:before{content:"\\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\\f10b"}.fa-circle-o:before{content:"\\f10c"}.fa-quote-left:before{content:"\\f10d"}.fa-quote-right:before{content:"\\f10e"}.fa-spinner:before{content:"\\f110"}.fa-circle:before{content:"\\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\\f112"}.fa-github-alt:before{content:"\\f113"}.fa-folder-o:before{content:"\\f114"}.fa-folder-open-o:before{content:"\\f115"}.fa-smile-o:before{content:"\\f118"}.fa-frown-o:before{content:"\\f119"}.fa-meh-o:before{content:"\\f11a"}.fa-gamepad:before{content:"\\f11b"}.fa-keyboard-o:before{content:"\\f11c"}.fa-flag-o:before{content:"\\f11d"}.fa-flag-checkered:before{content:"\\f11e"}.fa-terminal:before{content:"\\f120"}.fa-code:before{content:"\\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\\f123"}.fa-location-arrow:before{content:"\\f124"}.fa-crop:before{content:"\\f125"}.fa-code-fork:before{content:"\\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\\f127"}.fa-question:before{content:"\\f128"}.fa-info:before{content:"\\f129"}.fa-exclamation:before{content:"\\f12a"}.fa-superscript:before{content:"\\f12b"}.fa-subscript:before{content:"\\f12c"}.fa-eraser:before{content:"\\f12d"}.fa-puzzle-piece:before{content:"\\f12e"}.fa-microphone:before{content:"\\f130"}.fa-microphone-slash:before{content:"\\f131"}.fa-shield:before{content:"\\f132"}.fa-calendar-o:before{content:"\\f133"}.fa-fire-extinguisher:before{content:"\\f134"}.fa-rocket:before{content:"\\f135"}.fa-maxcdn:before{content:"\\f136"}.fa-chevron-circle-left:before{content:"\\f137"}.fa-chevron-circle-right:before{content:"\\f138"}.fa-chevron-circle-up:before{content:"\\f139"}.fa-chevron-circle-down:before{content:"\\f13a"}.fa-html5:before{content:"\\f13b"}.fa-css3:before{content:"\\f13c"}.fa-anchor:before{content:"\\f13d"}.fa-unlock-alt:before{content:"\\f13e"}.fa-bullseye:before{content:"\\f140"}.fa-ellipsis-h:before{content:"\\f141"}.fa-ellipsis-v:before{content:"\\f142"}.fa-rss-square:before{content:"\\f143"}.fa-play-circle:before{content:"\\f144"}.fa-ticket:before{content:"\\f145"}.fa-minus-square:before{content:"\\f146"}.fa-minus-square-o:before{content:"\\f147"}.fa-level-up:before{content:"\\f148"}.fa-level-down:before{content:"\\f149"}.fa-check-square:before{content:"\\f14a"}.fa-pencil-square:before{content:"\\f14b"}.fa-external-link-square:before{content:"\\f14c"}.fa-share-square:before{content:"\\f14d"}.fa-compass:before{content:"\\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\\f152"}.fa-euro:before,.fa-eur:before{content:"\\f153"}.fa-gbp:before{content:"\\f154"}.fa-dollar:before,.fa-usd:before{content:"\\f155"}.fa-rupee:before,.fa-inr:before{content:"\\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\\f158"}.fa-won:before,.fa-krw:before{content:"\\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\\f15a"}.fa-file:before{content:"\\f15b"}.fa-file-text:before{content:"\\f15c"}.fa-sort-alpha-asc:before{content:"\\f15d"}.fa-sort-alpha-desc:before{content:"\\f15e"}.fa-sort-amount-asc:before{content:"\\f160"}.fa-sort-amount-desc:before{content:"\\f161"}.fa-sort-numeric-asc:before{content:"\\f162"}.fa-sort-numeric-desc:before{content:"\\f163"}.fa-thumbs-up:before{content:"\\f164"}.fa-thumbs-down:before{content:"\\f165"}.fa-youtube-square:before{content:"\\f166"}.fa-youtube:before{content:"\\f167"}.fa-xing:before{content:"\\f168"}.fa-xing-square:before{content:"\\f169"}.fa-youtube-play:before{content:"\\f16a"}.fa-dropbox:before{content:"\\f16b"}.fa-stack-overflow:before{content:"\\f16c"}.fa-instagram:before{content:"\\f16d"}.fa-flickr:before{content:"\\f16e"}.fa-adn:before{content:"\\f170"}.fa-bitbucket:before{content:"\\f171"}.fa-bitbucket-square:before{content:"\\f172"}.fa-tumblr:before{content:"\\f173"}.fa-tumblr-square:before{content:"\\f174"}.fa-long-arrow-down:before{content:"\\f175"}.fa-long-arrow-up:before{content:"\\f176"}.fa-long-arrow-left:before{content:"\\f177"}.fa-long-arrow-right:before{content:"\\f178"}.fa-apple:before{content:"\\f179"}.fa-windows:before{content:"\\f17a"}.fa-android:before{content:"\\f17b"}.fa-linux:before{content:"\\f17c"}.fa-dribbble:before{content:"\\f17d"}.fa-skype:before{content:"\\f17e"}.fa-foursquare:before{content:"\\f180"}.fa-trello:before{content:"\\f181"}.fa-female:before{content:"\\f182"}.fa-male:before{content:"\\f183"}.fa-gittip:before{content:"\\f184"}.fa-sun-o:before{content:"\\f185"}.fa-moon-o:before{content:"\\f186"}.fa-archive:before{content:"\\f187"}.fa-bug:before{content:"\\f188"}.fa-vk:before{content:"\\f189"}.fa-weibo:before{content:"\\f18a"}.fa-renren:before{content:"\\f18b"}.fa-pagelines:before{content:"\\f18c"}.fa-stack-exchange:before{content:"\\f18d"}.fa-arrow-circle-o-right:before{content:"\\f18e"}.fa-arrow-circle-o-left:before{content:"\\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\\f191"}.fa-dot-circle-o:before{content:"\\f192"}.fa-wheelchair:before{content:"\\f193"}.fa-vimeo-square:before{content:"\\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\\f195"}.fa-plus-square-o:before{content:"\\f196"}.fa-space-shuttle:before{content:"\\f197"}.fa-slack:before{content:"\\f198"}.fa-envelope-square:before{content:"\\f199"}.fa-wordpress:before{content:"\\f19a"}.fa-openid:before{content:"\\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\\f19d"}.fa-yahoo:before{content:"\\f19e"}.fa-google:before{content:"\\f1a0"}.fa-reddit:before{content:"\\f1a1"}.fa-reddit-square:before{content:"\\f1a2"}.fa-stumbleupon-circle:before{content:"\\f1a3"}.fa-stumbleupon:before{content:"\\f1a4"}.fa-delicious:before{content:"\\f1a5"}.fa-digg:before{content:"\\f1a6"}.fa-pied-piper-square:before,.fa-pied-piper:before{content:"\\f1a7"}.fa-pied-piper-alt:before{content:"\\f1a8"}.fa-drupal:before{content:"\\f1a9"}.fa-joomla:before{content:"\\f1aa"}.fa-language:before{content:"\\f1ab"}.fa-fax:before{content:"\\f1ac"}.fa-building:before{content:"\\f1ad"}.fa-child:before{content:"\\f1ae"}.fa-paw:before{content:"\\f1b0"}.fa-spoon:before{content:"\\f1b1"}.fa-cube:before{content:"\\f1b2"}.fa-cubes:before{content:"\\f1b3"}.fa-behance:before{content:"\\f1b4"}.fa-behance-square:before{content:"\\f1b5"}.fa-steam:before{content:"\\f1b6"}.fa-steam-square:before{content:"\\f1b7"}.fa-recycle:before{content:"\\f1b8"}.fa-automobile:before,.fa-car:before{content:"\\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\\f1ba"}.fa-tree:before{content:"\\f1bb"}.fa-spotify:before{content:"\\f1bc"}.fa-deviantart:before{content:"\\f1bd"}.fa-soundcloud:before{content:"\\f1be"}.fa-database:before{content:"\\f1c0"}.fa-file-pdf-o:before{content:"\\f1c1"}.fa-file-word-o:before{content:"\\f1c2"}.fa-file-excel-o:before{content:"\\f1c3"}.fa-file-powerpoint-o:before{content:"\\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\\f1c8"}.fa-file-code-o:before{content:"\\f1c9"}.fa-vine:before{content:"\\f1ca"}.fa-codepen:before{content:"\\f1cb"}.fa-jsfiddle:before{content:"\\f1cc"}.fa-life-bouy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\\f1cd"}.fa-circle-o-notch:before{content:"\\f1ce"}.fa-ra:before,.fa-rebel:before{content:"\\f1d0"}.fa-ge:before,.fa-empire:before{content:"\\f1d1"}.fa-git-square:before{content:"\\f1d2"}.fa-git:before{content:"\\f1d3"}.fa-hacker-news:before{content:"\\f1d4"}.fa-tencent-weibo:before{content:"\\f1d5"}.fa-qq:before{content:"\\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\\f1d9"}.fa-history:before{content:"\\f1da"}.fa-circle-thin:before{content:"\\f1db"}.fa-header:before{content:"\\f1dc"}.fa-paragraph:before{content:"\\f1dd"}.fa-sliders:before{content:"\\f1de"}.fa-share-alt:before{content:"\\f1e0"}.fa-share-alt-square:before{content:"\\f1e1"}.fa-bomb:before{content:"\\f1e2"}\r\n@font-face{font-family:''icomoon'';src:url(''{T_THEME_PATH}/iconmoon/fonts/icomoon.eot?shasme'');src:url(''{T_THEME_PATH}/iconmoon/fonts/icomoon.eot?#iefixshasme'') format(''embedded-opentype''),url(''{T_THEME_PATH}/iconmoon/fonts/icomoon.woff?shasme'') format(''woff''),url(''{T_THEME_PATH}/iconmoon/fonts/icomoon.ttf?shasme'') format(''truetype''),url(''{T_THEME_PATH}/iconmoon/fonts/icomoon.svg?shasme#icomoon'') format(''svg'');font-weight:normal;font-style:normal}[class^="icon-moon-"],[class*=" icon-moon-"]{font-family:''icomoon'';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.icon-moon-infinity:before{content:"\\e672"}.icon-moon-uniF6DF:before{content:"\\e673"}.icon-moon-uniF73A:before{content:"\\e64d"}.icon-moon-uniF73B:before{content:"\\e64e"}.icon-moon-uniF73C:before{content:"\\e64f"}.icon-moon-uniF73D:before{content:"\\e650"}.icon-moon-uniF73E:before{content:"\\e651"}.icon-moon-uniF73F:before{content:"\\e652"}.icon-moon-uniF740:before{content:"\\e653"}.icon-moon-uniF746:before{content:"\\e65b"}.icon-moon-uniF644:before{content:"\\e65a"}.icon-moon-uniF64B:before{content:"\\e65c"}.icon-moon-uniF64C:before{content:"\\e65d"}.icon-moon-uniF64D:before{content:"\\e65e"}.icon-moon-uniF64E:before{content:"\\e65f"}.icon-moon-uniF5EB:before{content:"\\e661"}.icon-moon-uniF5DA:before{content:"\\e64c"}.icon-moon-uniF4A2:before{content:"\\e64b"}.icon-moon-uniF4A3:before{content:"\\e64a"}.icon-moon-uniF4B8:before{content:"\\e674"}.icon-moon-uniF47C:before{content:"\\e686"}.icon-moon-uniF47D:before{content:"\\e67e"}.icon-moon-superman:before{content:"\\e649"}.icon-moon-captainamerica:before{content:"\\e648"}.icon-moon-spiderman:before{content:"\\e647"}.icon-moon-batman:before{content:"\\e646"}.icon-moon-ironman:before{content:"\\e645"}.icon-moon-darthvader:before{content:"\\e644"}.icon-moon-residentevil:before{content:"\\e675"}.icon-moon-favoritefile:before{content:"\\e643"}.icon-moon-favoritefolder:before{content:"\\e642"}.icon-moon-addtocart:before{content:"\\e641"}.icon-moon-emptycart:before{content:"\\e640"}.icon-moon-keyboarddelete:before{content:"\\e654"}.icon-moon-oneup:before{content:"\\e63f"}.icon-moon-alienware:before{content:"\\e660"}.icon-moon-link:before{content:"\\e676"}.icon-moon-protecteddirectory:before{content:"\\e662"}.icon-moon-ruby:before{content:"\\e63e"}.icon-moon-ipcontrol:before{content:"\\e63d"}.icon-moon-mailinglists:before{content:"\\e687"}.icon-moon-filemanager:before{content:"\\e63c"}.icon-moon-legacyfilemanager:before{content:"\\e63b"}.icon-moon-plugin2:before{content:"\\e63a"}.icon-moon-php:before{content:"\\e639"}.icon-moon-lock:before{content:"\\e663"}.icon-moon-unlock:before{content:"\\e664"}.icon-moon-rawaccesslogs:before{content:"\\e688"}.icon-moon-addfolder:before{content:"\\e638"}.icon-moon-deletefolder:before{content:"\\e637"}.icon-moon-bookmark:before{content:"\\e636"}.icon-moon-newwindow:before{content:"\\e635"}.icon-moon-closewindow:before{content:"\\e634"}.icon-moon-newtab:before{content:"\\e632"}.icon-moon-closetab:before{content:"\\e633"}.icon-moon-reademail:before{content:"\\e631"}.icon-moon-emailrefresh:before{content:"\\e630"}.icon-moon-emailforward:before{content:"\\e62f"}.icon-moon-emailexport:before{content:"\\e62e"}.icon-moon-emailimport:before{content:"\\e62d"}.icon-moon-outbox:before{content:"\\e67f"}.icon-moon-voice:before{content:"\\e677"}.icon-moon-podcast:before{content:"\\e678"}.icon-moon-brush:before{content:"\\e665"}.icon-moon-palette:before{content:"\\e666"}.icon-moon-insertpictureleft:before{content:"\\e667"}.icon-moon-insertpictureright:before{content:"\\e668"}.icon-moon-insertpiechart:before{content:"\\e669"}.icon-moon-insertbarchart:before{content:"\\e66a"}.icon-moon-clearformatting:before{content:"\\e66b"}.icon-moon-coffee:before{content:"\\e66c"}.icon-moon-paypal:before{content:"\\e66d"}.icon-moon-flask:before{content:"\\e66e"}.icon-moon-flaskfull:before{content:"\\e66f"}.icon-moon-fire:before{content:"\\e670"}.icon-moon-radioactive:before{content:"\\e671"}.icon-moon-megaphone:before{content:"\\e679"}.icon-moon-rocket:before{content:"\\e67a"}.icon-moon-orange:before{content:"\\e67b"}.icon-moon-woman:before{content:"\\e67c"}.icon-moon-man:before{content:"\\e67d"}.icon-moon-psbuttoncircle:before{content:"\\e617"}.icon-moon-psbuttonsquare:before{content:"\\e618"}.icon-moon-psbuttontriangle:before{content:"\\e619"}.icon-moon-psbuttonx:before{content:"\\e61a"}.icon-moon-buttona:before{content:"\\e61b"}.icon-moon-buttonb:before{content:"\\e61c"}.icon-moon-buttonx:before{content:"\\e61d"}.icon-moon-buttony:before{content:"\\e61e"}.icon-moon-pscursor:before{content:"\\e614"}.icon-moon-psup:before{content:"\\e615"}.icon-moon-psright:before{content:"\\e616"}.icon-moon-psdown:before{content:"\\e624"}.icon-moon-psleft:before{content:"\\e623"}.icon-moon-analogleft:before{content:"\\e622"}.icon-moon-analogright:before{content:"\\e621"}.icon-moon-analogup:before{content:"\\e620"}.icon-moon-analogdown:before{content:"\\e61f"}.icon-moon-psl1:before{content:"\\e602"}.icon-moon-psl2:before{content:"\\e603"}.icon-moon-psr1:before{content:"\\e604"}.icon-moon-psr2:before{content:"\\e605"}.icon-moon-gamecursor:before{content:"\\e606"}.icon-moon-controllerps:before{content:"\\e607"}.icon-moon-controllernes:before{content:"\\e608"}.icon-moon-controllersnes:before{content:"\\e609"}.icon-moon-joystickarcade:before{content:"\\e60a"}.icon-moon-joystickatari:before{content:"\\e60b"}.icon-moon-podium:before{content:"\\e60c"}.icon-moon-trophy:before{content:"\\e60d"}.icon-moon-die:before{content:"\\e60e"}.icon-moon-ghost:before{content:"\\e60f"}.icon-moon-steam:before{content:"\\e610"}.icon-moon-starempty:before{content:"\\e611"}.icon-moon-starhalf:before{content:"\\e612"}.icon-moon-starfull:before{content:"\\e613"}.icon-moon-lifeempty:before{content:"\\e62c"}.icon-moon-lifehalf:before{content:"\\e62b"}.icon-moon-lifefull:before{content:"\\e62a"}.icon-moon-warmedal:before{content:"\\e625"}.icon-moon-medal:before{content:"\\e626"}.icon-moon-medalgold:before{content:"\\e627"}.icon-moon-medalsilver:before{content:"\\e628"}.icon-moon-medalbronze:before{content:"\\e629"}.icon-moon-checkbox:before{content:"\\e655"}.icon-moon-checkbox2:before{content:"\\e656"}.icon-moon-radiobutton:before{content:"\\e657"}.icon-moon-fastleft:before{content:"\\e680"}.icon-moon-fastright:before{content:"\\e681"}.icon-moon-fastup:before{content:"\\e682"}.icon-moon-fastdown:before{content:"\\e683"}.icon-moon-back:before{content:"\\e684"}.icon-moon-forward:before{content:"\\e685"}.icon-moon-lightbulb:before{content:"\\e658"}.icon-moon-diamond:before{content:"\\e659"}.icon-moon-forjq:before{content:"\\e600"}.icon-moon-forphp:before{content:"\\e601"}.icon-moon-none:before{content:"\\e000"}.icon-moon-bootstrap:before{content:"\\e001"}.icon-moon-less_c:before{content:"\\e002"}.icon-moon-w3c:before{content:"\\e003"}.icon-moon-pencil:before{content:"\\e004"}.icon-moon-pencil2:before{content:"\\e005"}.icon-moon-image2:before{content:"\\e006"}.icon-moon-image3:before{content:"\\e007"}.icon-moon-images:before{content:"\\e008"}.icon-moon-pacman:before{content:"\\e009"}.icon-moon-tags:before{content:"\\e00d"}.icon-moon-tag:before{content:"\\e00e"}.icon-moon-folder-open:before{content:"\\e00f"}.icon-moon-folder:before{content:"\\e010"}.icon-moon-library:before{content:"\\e011"}.icon-moon-feed:before{content:"\\e012"}.icon-moon-podcast2:before{content:"\\e013"}.icon-moon-connection:before{content:"\\e014"}.icon-moon-coin:before{content:"\\e015"}.icon-moon-pushpin:before{content:"\\e016"}.icon-moon-location2:before{content:"\\e017"}.icon-moon-location:before{content:"\\e018"}.icon-moon-map:before{content:"\\e019"}.icon-moon-map2:before{content:"\\e01a"}.icon-moon-history:before{content:"\\e01b"}.icon-moon-clock:before{content:"\\e01c"}.icon-moon-clock2:before{content:"\\e01d"}.icon-moon-alarm:before{content:"\\e01e"}.icon-moon-alarm2:before{content:"\\e01f"}.icon-moon-stopwatch:before{content:"\\e020"}.icon-moon-bell:before{content:"\\e021"}.icon-moon-calendar:before{content:"\\e022"}.icon-moon-calendar2:before{content:"\\e023"}.icon-moon-screen:before{content:"\\e024"}.icon-moon-laptop:before{content:"\\e025"}.icon-moon-mobile:before{content:"\\e026"}.icon-moon-mobile2:before{content:"\\e027"}.icon-moon-tablet:before{content:"\\e028"}.icon-moon-tv:before{content:"\\e029"}.icon-moon-spinner4:before{content:"\\e02a"}.icon-moon-busy:before{content:"\\e02b"}.icon-moon-spinner5:before{content:"\\e02c"}.icon-moon-spinner6:before{content:"\\e02d"}.icon-moon-spinner3:before{content:"\\e02e"}.icon-moon-spinner2:before{content:"\\e02f"}.icon-moon-spinner:before{content:"\\e030"}.icon-moon-redo:before{content:"\\e031"}.icon-moon-undo:before{content:"\\e032"}.icon-moon-zoom-out:before{content:"\\e033"}.icon-moon-zoom-in:before{content:"\\e034"}.icon-moon-search:before{content:"\\e035"}.icon-moon-quotes-left:before{content:"\\e036"}.icon-moon-users:before{content:"\\e037"}.icon-moon-user:before{content:"\\e038"}.icon-moon-users2:before{content:"\\e039"}.icon-moon-user2:before{content:"\\e03a"}.icon-moon-bubbles:before{content:"\\e03b"}.icon-moon-bubbles2:before{content:"\\e03c"}.icon-moon-bubble:before{content:"\\e03d"}.icon-moon-bubbles3:before{content:"\\e03e"}.icon-moon-bubble2:before{content:"\\e03f"}.icon-moon-bubbles4:before{content:"\\e040"}.icon-moon-wand:before{content:"\\e041"}.icon-moon-stats:before{content:"\\e042"}.icon-moon-bars:before{content:"\\e043"}.icon-moon-bars2:before{content:"\\e044"}.icon-moon-list2:before{content:"\\e045"}.icon-moon-list3:before{content:"\\e046"}.icon-moon-numbered-list:before{content:"\\e047"}.icon-moon-menu2:before{content:"\\e048"}.icon-moon-menu:before{content:"\\e049"}.icon-moon-link2:before{content:"\\e04a"}.icon-moon-earth:before{content:"\\e04b"}.icon-moon-happy:before{content:"\\e04c"}.icon-moon-happy2:before{content:"\\e04d"}.icon-moon-smiley:before{content:"\\e04e"}.icon-moon-smiley2:before{content:"\\e04f"}.icon-moon-tongue:before{content:"\\e050"}.icon-moon-tongue2:before{content:"\\e051"}.icon-moon-sad:before{content:"\\e052"}.icon-moon-sad2:before{content:"\\e053"}.icon-moon-wink:before{content:"\\e054"}.icon-moon-wink2:before{content:"\\e055"}.icon-moon-grin:before{content:"\\e056"}.icon-moon-grin2:before{content:"\\e057"}.icon-moon-cool:before{content:"\\e058"}.icon-moon-eye:before{content:"\\e059"}.icon-moon-eye-blocked:before{content:"\\e05a"}.icon-moon-eye2:before{content:"\\e05b"}.icon-moon-switch2:before{content:"\\e05c"}.icon-moon-angry:before{content:"\\e05d"}.icon-moon-angry2:before{content:"\\e05e"}.icon-moon-cool2:before{content:"\\e05f"}.icon-moon-evil:before{content:"\\e060"}.icon-moon-evil2:before{content:"\\e061"}.icon-moon-shocked:before{content:"\\e062"}.icon-moon-shocked2:before{content:"\\e063"}.icon-moon-confused:before{content:"\\e064"}.icon-moon-confused2:before{content:"\\e065"}.icon-moon-neutral:before{content:"\\e066"}.icon-moon-neutral2:before{content:"\\e067"}.icon-moon-wondering:before{content:"\\e068"}.icon-moon-wondering2:before{content:"\\e069"}.icon-moon-spell-check:before{content:"\\e06a"}.icon-moon-checkmark:before{content:"\\e06b"}.icon-moon-checkmark2:before{content:"\\e06c"}.icon-moon-checkbox-checked:before{content:"\\e06d"}.icon-moon-checkbox-unchecked:before{content:"\\e06e"}.icon-moon-checkbox-partial:before{content:"\\e06f"}.icon-moon-radio-checked:before{content:"\\e070"}.icon-moon-radio-unchecked:before{content:"\\e071"}.icon-moon-crop:before{content:"\\e072"}.icon-moon-scissors:before{content:"\\e073"}.icon-moon-font:before{content:"\\e074"}.icon-moon-text-height:before{content:"\\e075"}.icon-moon-text-width:before{content:"\\e076"}.icon-moon-bold:before{content:"\\e077"}.icon-moon-underline:before{content:"\\e078"}.icon-moon-italic:before{content:"\\e079"}.icon-moon-strikethrough:before{content:"\\e07a"}.icon-moon-code:before{content:"\\e07d"}.icon-moon-embed:before{content:"\\e07e"}.icon-moon-console:before{content:"\\e07f"}.icon-moon-new-tab:before{content:"\\e080"}.icon-moon-html5:before{content:"\\e081"}.icon-moon-html52:before{content:"\\e082"}.icon-moon-css3:before{content:"\\e083"}.icon-moon-chrome:before{content:"\\e084"}.icon-moon-firefox:before{content:"\\e085"}.icon-moon-IE:before{content:"\\e086"}.icon-moon-opera:before{content:"\\e087"}.icon-moon-safari:before{content:"\\e088"}.icon-moon-IcoMoon:before{content:"\\e089"}.icon-moon-earth2:before{content:"\\e08a"}.icon-moon-target:before{content:"\\e08b"}.icon-moon-list:before{content:"\\e08c"}.icon-moon-smiley3:before{content:"\\e08d"}.icon-moon-image:before{content:"\\e08e"}.icon-moon-equalizer:before{content:"\\e08f"}.icon-moon-link22:before{content:"\\e090"}.icon-moon-at:before{content:"\\e091"}.icon-moon-switch:before{content:"\\e092"}.icon-moon-apple:before{content:"\\e093"}.icon-moon-paperclip:before{content:"\\e094"}.icon-moon-code2:before{content:"\\e095"}.icon-moon-dashboard:before{content:"\\e096"}.icon-moon-meter2:before{content:"\\e097"}.icon-moon-meter:before{content:"\\e098"}.icon-moon-rocket2:before{content:"\\e099"}.icon-moon-settings:before{content:"\\e09a"}.icon-moon-equalizer2:before{content:"\\e09b"}.icon-moon-warning:before{content:"\\e09c"}.icon-moon-notification:before{content:"\\e09d"}.icon-moon-question:before{content:"\\e09e"}.icon-moon-info2:before{content:"\\e09f"}.icon-moon-info:before{content:"\\e0a0"}.icon-moon-blocked:before{content:"\\e0a1"}.icon-moon-cancel-circle:before{content:"\\e0a2"}.icon-moon-checkmark-circle:before{content:"\\e0a3"}.icon-moon-spam:before{content:"\\e0a4"}.icon-moon-enter:before{content:"\\e0a5"}.icon-moon-exit:before{content:"\\e0a6"}.icon-moon-shuffle:before{content:"\\e0a7"}.icon-moon-tab:before{content:"\\e0a8"}\r\n@font-face{font-family:"BebasNeueRegular";font-style:normal;font-weight:normal;src:url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.eot");src:url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.eot?#iefix") format("embedded-opentype"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.woff") format("woff"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.ttf") format("truetype"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.svg#BebasNeueRegular") format("svg")}.postbody .content{color:#495d60;-webkit-font-smoothing:antialiased;-webkit-text-size-adjust:100%;font-family:inherit;font-size:1.1em;-webkit-hyphens:auto;-moz-hyphens:auto;-ms-hyphens:auto;hyphens:auto}#wrap{background:none repeat scroll 0 0 rgba(255,255,255,0.2);border:1px solid rgba(255,255,255,0.75);box-shadow:0 0 4px rgba(50,50,50,0.5);margin:20px auto;padding:6px}#content-forum{background:none repeat scroll 0 0 #ebebeb;border-radius:4px 4px 4px 4px;box-shadow:0 0 14px #fff}.padding_0_40{padding:10px 8px}.corners{border-radius:8px 8px 8px 8px;display:block}#simple-wrap{padding:6px 10px}#page-body{margin:4px 0;clear:both}hr{border:0 none #fff;border-top:1px solid #ccc;height:1px;margin:5px 0;display:block;clear:both}hr.dashed{border-top:1px dashed #ccc;margin:10px 0}#review{margin-top:1em}#topicreview{padding-right:5px;overflow:auto;height:300px}#topicreview .postbody{width:auto;float:none;margin:0;height:auto}#topicreview .post{height:auto}#topicreview h2{border-bottom-width:0}.post-ignore .postbody{display:none}#post_details{overflow:auto;max-height:300px}#expand{clear:both}.post-icon{margin-bottom:2px;margin-right:5px}.posthilit{background-color:#f2f228;color:#000}.signature{margin-top:1.5em;padding-top:.2em;font-size:1.1em;border-top:1px solid #ccc;clear:left;line-height:140%;overflow:hidden;width:100%}.notice{margin-top:1.5em;border-top:1px dashed #ccc;line-height:120%}.searchresults{list-style:none;text-align:right;clear:both}blockquote{padding:0 0 0 15px;margin:0 0 20px;border-left:5px solid #ccc}.content blockquote cite{display:block}.content blockquote{background:none repeat scroll 0 0 #ededed;font-size:13px;border:1px solid #ccc;border-radius:3px;margin:1em 0 0;padding:.3em 2.5em .3em 2.5em;position:relative}.content blockquote:before{color:#ccc;content:"\\201C";font-size:5em;position:absolute;left:5px;top:.3em;line-height:.2em}.content blockquote:after{color:#ccc;content:"\\201D";font-size:5em;position:absolute;right:3px;bottom:0;line-height:0}.codebox{padding:3px;background-color:#fff;border:1px solid #d8d8d8;font-size:1em}.codebox span{text-transform:uppercase;border-bottom:1px solid #ccc;margin-bottom:3px;font-size:.8em;font-weight:bold;display:block}blockquote .codebox{margin:5px 5px 5px 0}.codebox code{overflow:auto;display:block;height:auto;max-height:200px;white-space:normal;line-height:1.3em;color:#8b8b8b;margin:2px 0}.syntaxbg{color:#fff}.syntaxcomment{color:#000}.syntaxdefault{color:#bcbcbc}.syntaxhtml{color:#000}.syntaxkeyword{color:#585858}.syntaxstring{color:#a7a7a7}.attachbox{width:auto;margin:10px;padding:10px;background-color:#fff;border:1px dashed #d8d8d8}.pm-message .attachbox{background-color:#f3f3f3}.attachbox p{line-height:110%;color:#666;font-weight:normal;clear:left}.stats{line-height:110%;color:#666;font-weight:normal;clear:left}.attach-image{margin:3px 0;width:100%;max-height:350px;overflow:auto}.attach-image img{border:1px solid #999;cursor:default}.thumbnail{display:block;margin-bottom:4px}a{direction:ltr;unicode-bidi:embed}.username-coloured{font-weight:600;display:inline;padding:0}.table-primary thead th a{color:#fff;font-family:inherit;font-style:inherit;font-weight:inherit}.feed-icon-forum{float:right;margin:3px}a:link{color:#8c8c8c}a:visited{color:#8c8c8c}a:hover{color:#a6a6a6;text-decoration:none}a:active{color:#338ad2}a.forumtitle:hover{color:#8c8c8c;text-decoration:none}a.forumtitle:active{color:#105289}a.forumtitle{font-family:inherit;font-style:normal;font-weight:600;text-decoration:none;color:#148fcf}a.topictitle{font-family:inherit;font-style:normal;font-weight:600;text-decoration:none;color:#148fcf}a.topictitle:hover{color:#8c8c8c;text-decoration:none}a.topictitle:active{color:#105289}.postlink{color:#368ad2;border-bottom:1px dashed #ccc}.postlink:visited{color:#5d8fbd}.postlink:active{color:#368ad2}.postlink:hover{color:#8c8c8c;border-bottom:1px solid #ccc}.signature a,.signature a:visited,.signature a:hover,.signature a:active{background-color:transparent;border:0;text-decoration:none}\r\n/*****************************************************************\r\n * Note: You can run a search with one of the title below to find the references in the css\r\n * **************************************************************\r\n *\r\n * BBOOTS(3.0.2) @SiteSplat.com - Table of Contents \r\n * \r\n *    a- GENERAL ELEMENTS - HEADINGS ( from line 36 to 220 approx. )\r\n *    b- UCP                         ( from line 222 to 750 approx. )\r\n *    c- TABLES STYLE ANF FONT ICONS ( from 753 to 927 approx. )\r\n *    d- INDEX PROFILE MENU          ( from 951 to 988 approx. )\r\n *    e- BREADCRUMB STYLE            ( from 991 to 1260 approx. )\r\n *    f- SOCIAL TOP BAR              ( from 1263 to 1309 approx. )\r\n *    g- SEARCH STYLE                ( from 1316 to 1368 approx. )\r\n *    h- HEADER STYLE       		 ( from 1375 to 1486 approx. )\r\n *    i- MAIN NAVIGATION		     ( from 1490 to 1699 approx. )\r\n *    j- MOBILE NAVIGATION           ( from 1702 to 1801 approx. )\r\n *    k- RESPONSIVE QUERIES			 ( from 1805 to 2175 approx. )\r\n *    l- FOOTER LAYOUT				 ( from 2180 to 2426 approx. )\r\n *    m- RADIO CHECKBOX STYLE 		 ( from 2429 to 2511 approx. )\r\n *    n- FORMS				         ( from 2530 to 2587 approx. )\r\n *    o- USER PROFILE AND GALLERY    ( from 2581 to 2780 approx. )\r\n *    p- MISC - BUTTONS - ALERTS     ( from 2783 to 2936 approx. )\r\n *    q- WELLS AND WIDGETS           ( from 2939 to 2990 approx. )\r\n *    r- PAGINATION 				 ( from 3015 to 3087 approx. )\r\n *    s- PM STUFF				     ( from 3090 to 3244 approx. )\r\n *    t- BACK TO TOP				 ( from 3247 to 3274 approx. )\r\n *    u- 400 - 500 PAGES			 ( from 3276 to 3336 approx. )\r\n *    v- MCP BAN LIST FIX			 ( from 3340 to 3350 approx. )\r\n *    w- \r\n *    x- \r\n *    y- \r\n *    z- \r\n * **************************************************************\r\n *****************************************************************/\r\n\r\n/* GENERAL ELEMENTS - HEADINGS */\r\nhtml {\r\n  background: #999 url("{T_THEME_PATH}/bootstrap/pattern/forum-backdrop.png");\r\n}\r\n\r\nbody {\r\n  background-color:transparent;\r\n  margin: 0;\r\n  font-family: ''Source Sans Pro'',''Arial'',''Helvetica'',sans-serif;\r\n  font-size: 13px;\r\n}\r\n \r\nh1, h2, h3, h4, h5, h6, h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {\r\n    color: #7F7F7F;\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    line-height: normal;\r\n	font-weight: 200;\r\n    margin: 5px 0 10px;\r\n	text-rendering: optimizeLegibility;/* Fix for webkit rendering, well at least for the time being */\r\n    -webkit-font-smoothing: antialiased;/* Fix for webkit rendering, well at least for the time being */\r\n}\r\n\r\n.postbody h3 {\r\n	/* Postbody requires a different h3 format - so change it here */\r\n	font-size: 1.5em;\r\n	margin-top:0;\r\n	text-transform: none;\r\n	border: none;\r\n}\r\n\r\nh3 {\r\n	/* Sub-headers (also used as post headers, but defined later) */\r\n	text-transform: uppercase;\r\n	border-bottom: 1px solid #CCCCCC;\r\n	padding-bottom: 2px;\r\n	color: #7F7F7F;\r\n}\r\n\r\n.content h2 {\r\n	color: #7F7F7F;\r\n	border-bottom: 1px solid #CCCCCC;\r\n	font-size: 1.6em;\r\n	margin-top: 0.5em;\r\n	margin-bottom: 0.5em;\r\n	padding-bottom: 0.5em;\r\n}\r\n\r\n.side-segment h3:after, .side-segment h2:after {\r\n    background-color: #169FE6;\r\n    bottom: 0;\r\n    content: "";\r\n    display: block;\r\n    height: 3px;\r\n    margin-bottom: -2px;\r\n    width: 50px;\r\n}\r\n\r\na { \r\n	color: #2880b2; \r\n	text-decoration: none;\r\n	-webkit-transition: color 0.2s ease, background-color 0.2s ease;\r\n	-moz-transition: color 0.2s ease, background-color 0.2s ease;\r\n	-ms-transition: color 0.2s ease, background-color 0.2s ease;\r\n	-o-transition: color 0.2s ease, background-color 0.2s ease;\r\n	transition: color 0.2s ease, background-color 0.2s ease;\r\n}\r\n/* HEADINGS */\r\n\r\n \r\n/* GENERAL ELEMENTS - HEADINGS\r\n----------------------------------------*/\r\n/* FIXES AND TWEAKS ON THE FLY */\r\n\r\n/** Youtube BBcode for BBOOTS **/\r\n\r\n.flex-video iframe, .flex-video object, .flex-video embed, .flex-video video {\r\n    height: 100%;\r\n    left: 0;\r\n    position: absolute;\r\n    top: 0;\r\n    width: 100%;\r\n}\r\n\r\n.flex-video {\r\n    height: 0;\r\n    margin-bottom: 16px;\r\n    overflow: hidden;\r\n    padding-bottom: 67.5%;\r\n    padding-top: 25px;\r\n    position: relative;\r\n}\r\n\r\n.control-video {\r\n    max-width: 400px;\r\n}\r\n\r\n/** Youtube BBcode for BBOOTS **/\r\n\r\n/** Fix for btn group tool bar in post editor **/\r\n\r\n.section-posting .btn-toolbar > .btn, .btn-toolbar > .btn-group, .btn-toolbar > .input-group {\r\n    margin-left: 5px !important;\r\n}\r\n\r\n/** Fix for smaller btn group in topic **/\r\n\r\n.section-viewtopic .btn-group > .btn:first-child {\r\n    margin-left: 1px;\r\n}\r\n\r\n/** Fix for btn group **/\r\n\r\n\r\n/*** rounded borders dropdown ***/\r\n.dropdown-menu a {\r\n    border-radius: 4px 4px 4px 4px;\r\n    margin: 0 5px;\r\n}\r\n\r\n.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {\r\n	color:#5A5A5A;\r\n	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);\r\n}\r\n\r\n.dropdown-menu li:hover{\r\n  background: none repeat scroll 0 0 #E8E8E8;\r\n  color: #148FCF;\r\n  text-decoration: none;\r\n  background-repeat: repeat-x;\r\n   text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n  *background-color: #e6e6e6;\r\n  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);\r\n  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));\r\n  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);\r\n  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);\r\n  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);\r\n}\r\n\r\n.copyright{\r\n    display: block;\r\n    height: auto;\r\n    margin-left:auto;\r\n	margin-right:auto;\r\n    position: relative;\r\n	color: #CDCDCD;\r\n}\r\n \r\n.copyright a{\r\n	color: #CDCDCD;\r\n}\r\n \r\n/*** modal header fix ***/\r\n.modal-header h3 {\r\n    border-bottom: medium none !important;\r\n}\r\n\r\n/*** space, padding quickfix ***/\r\n.space10 {\r\n    clear: both;\r\n    height: 10px !important;\r\n}\r\n\r\n.padding15{\r\n    padding:15px !important;\r\n}\r\n\r\n.padding10{\r\n    padding:10px !important;\r\n}\r\n\r\n\r\n.stat_offline {\r\n    background: none repeat scroll 0 0 #CB1111;\r\n}\r\n\r\n.stat_online {\r\n    background: none repeat scroll 0 0 #5DA423;\r\n}\r\n\r\n.stat {\r\n    border: 2px solid #FFFFFF !important;\r\n    border-radius: 8px 8px 8px 8px;\r\n    display: inline-block;\r\n    height: 12px;\r\n    margin-right: 10px;\r\n    width: 12px;\r\n}\r\n\r\n/*-------------------------------\r\n	UCP\r\n------------------------------*/\r\n\r\n/* General form styles from former FORM.css\r\n----------------------------------------*/\r\nfieldset {\r\n	border-width: 0;\r\n}\r\n/* General form styles from former FORM.css\r\n----------------------------------------*/\r\n\r\n.hr-double {\r\n    border-bottom: 1px solid #E3E3E3;\r\n    border-top: 1px solid #E3E3E3;\r\n    height: 3px;\r\n	margin-bottom: 40px;\r\n    margin-top: -15px;\r\n}\r\n\r\n.hr-double-pm {\r\n    border-bottom: 1px solid #E3E3E3;\r\n    border-top: 1px solid #E3E3E3;\r\n    height: 3px;\r\n	margin-top: 20px;\r\n}\r\n\r\n.btn-group-member {\r\n    display: block;\r\n    font-size: 0;\r\n    position: relative;\r\n    vertical-align: middle;\r\n    white-space: nowrap;\r\n}\r\n\r\n\r\n.reset-list{\r\n    list-style: none outside none;\r\n    margin: 0;\r\n}\r\n\r\n.reset-list i{\r\n    color:#808080;\r\n}\r\n\r\n.ucp-friend {\r\n    display: block;\r\n    text-align: center;\r\n}\r\n\r\n.caret {\r\n    border-top: 4px solid #8C8C8C;\r\n}\r\n\r\n.caret:hover {\r\n    border-top: 4px solid #000;\r\n}\r\n\r\n/* AVATAR FLIP PM\r\n----------------------------------------*/\r\n\r\n#flip-container {\r\n    position: relative;\r\n    margin: 10px auto;\r\n    width: 100%;\r\n    height: 120px;\r\n    overflow: hidden;\r\n    z-index: 1;\r\n}\r\n.face.back {\r\n    display: none;\r\n}\r\n#flip-container {\r\n    -webkit-perspective: 3000;\r\n    -ms-perspective: 3000;\r\n    -moz-perspective: 3000;\r\n    perspective: 3000;\r\n}\r\n#flip-card {\r\n    width: 100%;\r\n    height: 100%;\r\n    -webkit-transform-style: preserve-3d;\r\n    -webkit-transition: -webkit-transform 1s;\r\n    -moz-transform-style: preserve-3d;\r\n    -moz-transition: -moz-transform 1s;\r\n    -ms-transform-style: preserve-3d;\r\n    -ms-transition: -ms-transform 1s;\r\n    transform-style: preserve-3d;\r\n    transition: transform 1s;\r\n}\r\n\r\n.rotated {\r\n    -webkit-transform: rotateY(180deg);\r\n    -moz-transform: rotateY(180deg);\r\n    -ms-transform: rotateY(180deg);\r\n    transform: rotateY(180deg);\r\n}\r\n.face {\r\n    position: absolute;\r\n    width: 100%;\r\n    height: 100%;\r\n    -webkit-backface-visibility: hidden;\r\n    -moz-backface-visibility: hidden;\r\n    -ms-backface-visibility: hidden;\r\n    backface-visibility: hidden;\r\n}\r\n.face.back {\r\n    display: block;\r\n    -webkit-transform: rotateY(180deg);\r\n    -webkit-box-sizing: border-box;\r\n    -moz-transform: rotateY(180deg);\r\n    -moz-box-sizing: border-box;\r\n    -ms-transform: rotateY(180deg);\r\n    -ms-box-sizing: border-box;\r\n    transform: rotateY(180deg);\r\n    box-sizing: border-box;\r\n}\r\n\r\n#flip-container i {\r\n    color: #999999;\r\n    text-decoration: none;\r\n}\r\n\r\n/*-------------------------------\r\n	UCP FRIENDS LIST FIX\r\n------------------------------*/\r\n\r\n#scrollbar, #scrollbar-one, #scrollbar-two, #scrollbar-three {\r\n    clear: both;\r\n    margin: 0;\r\n    width: 100%;\r\n}\r\n\r\n#scrollbar .scrollbar, #scrollbar-one .scrollbar, #scrollbar-two .scrollbar, #scrollbar-three .scrollbar {\r\n    float: right;\r\n    position: relative;\r\n    width: 3px;\r\n}\r\n\r\n#scrollbar .viewport, #scrollbar-one .viewport, #scrollbar-two .viewport, #scrollbar-three .viewport {\r\n    height: 270px;\r\n    overflow: hidden;\r\n    position: relative;\r\n    width: 98%;\r\n}\r\n\r\n#scrollbar .overview, #scrollbar-one .overview, #scrollbar-two .overview, #scrollbar-three .overview {\r\n    left: 0;\r\n    list-style: none outside none;\r\n    position: absolute;\r\n    top: 0;\r\n    width: 100%;\r\n}\r\n\r\n.friend-ucp li {\r\n    border-bottom: 1px dashed #C9C9C9;\r\n    color: #0D0D0D;\r\n    display: block;\r\n    line-height: 32px;\r\n    margin: 0 5px 5px 0;\r\n    position: relative;\r\n}\r\n\r\n#scrollbar .track, #scrollbar-one .track, #scrollbar-two .track, #scrollbar-three .track {\r\n    background-color: #CCCCCC;\r\n    height: 100%;\r\n    padding: 0;\r\n    position: relative;\r\n    width: 3px;\r\n}\r\n\r\n#scrollbar-one .thumb, #scrollbar-two .thumb {\r\n    background-color: #0DAED3;\r\n}\r\n\r\n#scrollbar .thumb, #scrollbar-one .thumb, #scrollbar-two .thumb, #scrollbar-three .thumb {\r\n    cursor: pointer;\r\n    height: 20px;\r\n    overflow: hidden;\r\n    position: absolute;\r\n    top: 0;\r\n    width: 3px;\r\n}\r\n\r\n#scrollbar-one .thumb .end, #scrollbar-two .thumb .end {\r\n    background-color: #0DAED3;\r\n}\r\n\r\n#scrollbar .thumb .end, #scrollbar-one .thumb .end, #scrollbar-two .thumb .end, #scrollbar-three .thumb .end {\r\n    height: 5px;\r\n    overflow: hidden;\r\n    width: 13px;\r\n}\r\n/*-------------------------------\r\n	UCP FRIENDS LIST FIX\r\n------------------------------*/\r\n\r\n/*-------------------------------\r\n	UCP PM TAGS STYLE\r\n------------------------------*/\r\n.tagsinput span.tag {\r\n    background: none repeat scroll 0 0 #CCCCCC;\r\n    border: 1px solid #B3B3B3;\r\n    border-radius: 2px;\r\n    color: #FFFFFF;\r\n    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.10);\r\n    font-weight: 600;\r\n    font-size: 11px;\r\n    line-height: 14px;\r\n    margin: 3px;\r\n    padding: 3px 5px;\r\n}\r\n\r\n.tagsinput {\r\n    margin-bottom: 5px;\r\n}\r\n\r\n.tagsinput input {\r\n  color: #FFFFFF;\r\n  font-weight: bold;\r\n  margin-bottom: 5px;\r\n  padding: 0 0 0 4px;\r\n}\r\n/*-------------------------------\r\n	UCP PM TAGS STYLE\r\n------------------------------*/\r\n\r\n/*-------------------------------\r\n	Recent activity UCP\r\n------------------------------*/\r\n \r\n.recent-activity {\r\n    list-style: none outside none;\r\n    margin-bottom: 0;\r\n    margin-left: 0;\r\n	padding:0;\r\n}\r\n\r\n.recent-activity li.item {\r\n    border-bottom: 1px dashed #C9C9C9;\r\n    margin-bottom: 0;\r\n    margin-left: 50px;\r\n    margin-right: 20px;\r\n    padding: 15px 0;\r\n    position: relative;\r\n}\r\n\r\n.recent-activity li .icon:after {\r\n    border-left: 2px solid #C9C9C9;\r\n    border-top: medium none;\r\n    content: "";\r\n    height: 14px;\r\n    left: -25px;\r\n    position: absolute;\r\n    top: 53px;\r\n    width: 2px;\r\n}\r\n\r\n.recent-activity li:last-child .icon:after {\r\n    border-left: medium none;\r\n}\r\n\r\n.recent-activity li .icon.gray {\r\n    background: none repeat scroll 0 0 #FCFCFC;\r\n    border: 1px solid #999999;\r\n}\r\n\r\n.recent-activity li .icon.green {\r\n    background: none repeat scroll 0 0 #72B110;\r\n    border: 1px solid #72B110;\r\n}\r\n\r\n.recent-activity li .icon.blue {\r\n    background: none repeat scroll 0 0 #62AEEF;\r\n    border: 1px solid #3693E2;\r\n}\r\n\r\n.recent-activity li .icon.yellow {\r\n    background: none repeat scroll 0 0 #E7D246;\r\n    border: 1px solid #D0BA24;\r\n}\r\n\r\n.recent-activity li .icon.orange {\r\n    background: none repeat scroll 0 0 #F88C00;\r\n    border: 1px solid #CA7302;\r\n}\r\n\r\n.recent-activity li .icon.red {\r\n    background: none repeat scroll 0 0 #F40A0A;\r\n    border: 1px solid #CA7302;\r\n}\r\n\r\n.recent-activity li .icon {\r\n    background: none repeat scroll 0 0 #D8605F;\r\n    border: 1px solid #BA3938;\r\n    border-radius: 2px 2px 2px 2px;\r\n    box-shadow: 0 0 4px 0 #FFFFFF inset, 0 0 4px 0 #C9C9C9;\r\n    float: left;\r\n    height: 32px;\r\n    margin-left: -40px;\r\n    width: 32px;\r\n}\r\n\r\n.recent-activity li .icon i {\r\n    color: #FFFFFF;\r\n    padding: 8px;\r\n    position: absolute;\r\n}\r\n \r\n.icon16 {\r\n    font-size: 16px;\r\n}\r\n\r\n.webkitfix {\r\n    max-width: 250px\r\n}\r\n\r\n.recent-activity li.item .text {\r\n    display: inline-block;\r\n    margin-left: 10px;\r\n    margin-top: 5px;\r\n}\r\n\r\n.recent-activity li.item .text a {\r\n    color: #D8605F;\r\n    font-weight: bold;\r\n}\r\n\r\n.recent-activity li .recent-detail{\r\n    color: #999999;\r\n    font-size: 12px;\r\n    font-weight: bold;\r\n    margin-left: 10px;\r\n    margin-right: 10px;\r\n}\r\n\r\n.recent-activity li:last-child {\r\n    border-bottom: 0 none;\r\n}\r\n\r\n/*-------------------------------\r\n	Recent activity UCP\r\n------------------------------*/\r\n\r\n/* ---------------------------------\r\nUCP TABS NAVIGATION\r\n------------------------------------ */\r\n\r\n/* UCP legend frame - The <legend> tag defines a caption for the <fieldset> element */\r\n.framed-ucp {\r\n    background: none repeat scroll 0 0 transparent;\r\n    border: 1px solid #CCCCCC;\r\n    border-radius: 4px 4px 4px 4px;\r\n    padding: 20px;\r\n}\r\n\r\n#cprofile .bootstrap-select {\r\n	margin-bottom:10px;\r\n}\r\n\r\nlegend {\r\n    border: medium none;\r\n    color: #9A9A9A;\r\n    margin: 0;\r\n	font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 24px;\r\n    padding: 0 10px;\r\n    width: auto;\r\n	display: block;\r\n}\r\n/* UCP legend frame - The <legend> tag defines a caption for the <fieldset> element */\r\n\r\n.widget-body-ucp {\r\n    background-color: #FFFFFF;\r\n    border-bottom: 1px solid #CDCDCD;\r\n	border-top: 1px solid #CDCDCD;\r\n    border-left: 1px solid #CDCDCD;\r\n    border-radius: 0 3px 0 0;\r\n    border-right: 1px solid #CDCDCD;\r\n    display: block;\r\n    padding: 15px;\r\n}\r\n\r\n.widget-body { /*** UCP navigation temporary fix ***/\r\n    background-color: #FFFFFF;\r\n    border-left: 1px solid #CDCDCD;\r\n    border-right: 1px solid #CDCDCD;\r\n	border-top: 1px solid #CDCDCD;\r\n    border-bottom: 1px solid #CDCDCD;\r\n	border-radius: 0 3px 0 0;\r\n    display: block;\r\n	margin-bottom: 10px;\r\n    padding: 15px;\r\n}\r\n\r\n.tabbable-custom .nav-tabs > li.active {\r\n    border-top: 3px solid #169FE6;\r\n	border-radius: 6px 6px 6px 6px;\r\n    margin-top: 0;\r\n    position: relative;\r\n}\r\n.tabbable-custom .nav-tabs > li {\r\n    border-top: 2px solid transparent;\r\n    margin-right: -1px;\r\n}\r\n\r\n.tabbable-custom .nav-tabs > li.active > a {\r\n    border-top: medium none;\r\n    font-weight: bold;\r\n}\r\n\r\n.tabbable-custom .nav-tabs > li.active > a:hover {\r\n    border-top: medium none;\r\n	background-color:#FFF;\r\n}\r\n\r\n.section-ucp .nav-tabs,\r\n.section-mcp .nav-tabs,\r\n.section-posting .nav-tabs {\r\n    border-bottom: 0 none;\r\n}\r\n\r\n.section-ucp .nav > li > a:focus, \r\n.section-mcp .nav > li > a:focus,\r\n.section-posting .nav > li > a:focus, \r\n.section-ucp .nav > li > a:hover, \r\n.section-mcp .nav > li > a:hover,\r\n.section-posting .nav > li > a:hover {\r\n    background-color:#F5F5F5;\r\n	text-decoration:none;\r\n	border-left: 1px solid #CDCDCD;\r\n    border-right: 1px solid #CDCDCD;\r\n    border-top: 1px solid #CDCDCD;\r\n}\r\n\r\n.section-ucp ul.nav-tabs li a,\r\n.section-mcp ul.nav-tabs li a,\r\n.section-posting ul.nav-tabs li a {\r\n    border-left: 1px solid #CDCDCD;\r\n    border-top: 1px solid #CDCDCD;\r\n	border-right: 1px solid #CDCDCD;\r\n    display: block;\r\n    font-size: 13px;\r\n    height: 29px;\r\n    line-height: 30px;\r\n    margin: 0;\r\n    padding: 0 20px;\r\n    text-decoration: none;\r\n    width: auto;\r\n}\r\n\r\n.nav-tabs > li > a:first-child {\r\n    border-radius: 4px 4px 0 0;\r\n}\r\n\r\n.tabbable-custom > .tab-content {\r\n    background-color: #FFFFFF;\r\n    border: 1px solid #DDDDDD;\r\n    border-radius: 0 0 0 0;\r\n    padding: 10px;\r\n}\r\n\r\n.tab-content {\r\n    overflow: inherit;\r\n}\r\n\r\n.ver-inline-menu {\r\n    list-style: none outside none;\r\n    margin: 0;\r\n	padding:0;\r\n}\r\n\r\n.ver-inline-menu li {\r\n    margin-bottom: 1px;\r\n    position: relative;\r\n}\r\n\r\n.ver-inline-menu li i {\r\n    background: none repeat scroll 0 0 #E0EAF0;\r\n    color: #B9CBD5;\r\n    font-size: 15px;\r\n    margin: 0 8px 0 0;\r\n    padding: 11px 9px;\r\n}\r\n\r\n.ver-inline-menu li a {\r\n    background: none repeat scroll 0 0 #F0F6FA;\r\n    border-left: 2px solid #C4D5DF;\r\n    color: #557386;\r\n    display: block;\r\n	line-height: 36px;\r\n}\r\n\r\n.ver-inline-menu li:hover a, .ver-inline-menu li:hover i {\r\n    background: none repeat scroll 0 0 #E0EAF0;\r\n    text-decoration: none;\r\n}\r\n\r\n.ver-inline-menu li:hover i {\r\n    background: none repeat scroll 0 0 #C4D5DF;\r\n    color: #FFFFFF;\r\n}\r\n\r\n.ver-inline-menu li.active a, .ver-inline-menu li.active i {\r\n    background: none repeat scroll 0 0 #169EF4;\r\n    border-left: 1px solid #0C91E5;\r\n    color: #FFFFFF;\r\n    text-decoration: none;\r\n}\r\n\r\n.ver-inline-menu li.active i {\r\n    background: none repeat scroll 0 0 #0C91E5;\r\n}\r\n\r\n.ver-inline-menu li.active:after {\r\n    border-bottom: 6px solid transparent;\r\n    border-left: 6px solid #169EF4;\r\n    border-top: 6px solid transparent;\r\n    content: "";\r\n    display: inline-block;\r\n    position: absolute;\r\n    right: -5px;\r\n    top: 12px;\r\n}\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nUCP TABS NAVIGATION\r\n-------------------------------------------------------------- */\r\n\r\n\r\n/*-------------------------------\r\n	TABLES STYLE ANF FONT ICONS\r\n ------------------------------*/\r\n.table-white {\r\n    background: none repeat scroll 0 0 #FFFFFF;\r\n}\r\n\r\n.table-bordered {\r\n    border-color: #DBDBDB;\r\n	-webkit-border-radius: 5px;\r\n    -moz-border-radius: 5px;\r\n    border-radius: 5px;\r\n    -webkit-box-shadow: 0 3px 0 0 #DBDBDB;\r\n    -moz-box-shadow: 0 3px 0 0 #DBDBDB;\r\n    box-shadow: 0 3px 0 0 #DBDBDB;\r\n}\r\n\r\n.table-primary {\r\n    border-color: -moz-use-text-color #DBDBDB #DBDBDB;\r\n    border-top: medium none;\r\n}\r\n\r\n.table-primary tbody td {\r\n    background: none repeat scroll 0 0 #FAFAFA;\r\n    border-width: 0;\r\n    color: #7C7C7C;\r\n}\r\n\r\n.table > tbody + tbody { /* Fix for webkit border top table ucp */\r\n    border-top: 0 none;\r\n}\r\n\r\n.table-primary tbody tr:nth-child(2n+1) td, .table-primary tbody tr:nth-child(2n+1) th {\r\n    background: none repeat scroll 0 0 #FFFFFF;\r\n}\r\n\r\n.table-primary thead th {\r\n    background-color: #169FE6;\r\n    border-color: #169FE6 !important;\r\n    color: #FFFFFF;\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 14px;\r\n	font-style: normal;\r\n    font-weight: 700;\r\n	text-rendering: optimizeLegibility;/* Fix for webkit rendering, well at least for the time being */\r\n    -webkit-font-smoothing: antialiased;/* Fix for webkit rendering, well at least for the time being */\r\n	text-transform: uppercase;\r\n}\r\n \r\n.table tr.active td, .table tr.active {\r\n    background: none repeat scroll 0 0 #DEECFA !important;\r\n}\r\n\r\n.table th.table-icon, .table td.table-icon {\r\n    width: 20px;\r\n    background-position: 5px center;\r\n    width: 20px;\r\n}\r\n\r\n.table th.table-check, .table td.table-check {\r\n    width: 80px;\r\n	text-align: center;\r\n}\r\n\r\nth i {\r\n	color:#F8F8F8;\r\n}\r\n\r\n.large60 {\r\n	width:70px;\r\n}\r\n\r\n.large80 {\r\n	width:120px;\r\n}\r\n\r\n.large12 {\r\n    width: 12%;\r\n}\r\n\r\n.large20 {\r\n	width:20%;\r\n}\r\n\r\n.large23 {\r\n    width: 23%;\r\n}\r\n\r\n.large26 {\r\n    width: 26%;\r\n}\r\n\r\n.large28 {\r\n    width: 28%;\r\n}\r\n \r\n.row-icon {\r\n    float: left;\r\n    height: 27px;\r\n    margin-right: 5px;\r\n    margin-top: 5px;\r\n    width: 27px;\r\n}\r\n\r\n.topic-icon {\r\n	float: left;\r\n    height: 16px;\r\n    margin-left: -38px;\r\n    margin-top: -5px;\r\n    position: absolute;\r\n    width: 16px;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nFont icon forums\r\n-------------------------------------------------------------- */\r\n.row-icon-font {\r\n    float: left;\r\n    font-size: 27px;\r\n    margin-right: 5px;\r\n    margin-top: 5px;\r\n}\r\n\r\n.forum-image {\r\n    display: inline-block;\r\n    float: left;\r\n    width: 46px;\r\n    height: 40px;\r\n}\r\n\r\n.forum-image img {\r\n    width: 42px;\r\n    height: 42px;\r\n}\r\n\r\n.row-icon-font-mini {\r\n    color: #FFFFFF;\r\n    font-size: 14px;\r\n    margin-left: -20px;\r\n    margin-right: 5px;\r\n    margin-top: 15px;\r\n    position: absolute;\r\n}\r\n\r\n.forum-list-lock {\r\n    margin-left: -15px;\r\n    margin-top: 18px;\r\n}\r\n\r\n.forumview-lock {\r\n    color: #666;\r\n    margin-left: -14px;\r\n    margin-top: 21px;\r\n	text-shadow: -1px -1px 0 #FFFFFF;\r\n}\r\n\r\n.icon-moon-default:before {\r\n    content: "\\e64d";\r\n}\r\n\r\n.icon-moon-default2:before {\r\n   content: "\\e687";\r\n}\r\n\r\n.icon-moon-link2:before {\r\n   content: "\\e04a";\r\n}\r\n\r\n.icon-moon-podcast2:before {\r\n    content: "\\e678";\r\n}\r\n\r\n.icon-moon-voice2:before {\r\n   content: "\\e677";\r\n}\r\n\r\n.icon-moon-pushpin2:before {\r\n   content: "\\e016";\r\n}\r\n\r\n.icon-moon-bars2:before {\r\n   content: "\\e043";\r\n}\r\n\r\n.icon-moon-moved:before {\r\n   content: "\\e63a";\r\n}\r\n/* --------------------------------------------------------------\r\nFont icon forums\r\n-------------------------------------------------------------- */\r\n\r\n.footable-row-detail-value {\r\n    width: 100%;\r\n}\r\n\r\n.footable {\r\n    width: 100%;\r\n}\r\n\r\n.footable.breakpoint > tbody > tr.footable-row-detail {\r\n    background: none repeat scroll 0 0 #EEEEEE;\r\n}\r\n\r\n.footable.breakpoint > tbody > tr > td > span.footable-toggle {\r\n    background: none repeat scroll 0 0 #ECEBEC;\r\n    padding: 10px 15px;\r\n	float: right;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\n   INDEX PROFILE MENU\r\n-------------------------------------------------------------- */\r\n.dropdown-menu {\r\n    background-clip: padding-box;\r\n    background-color: #FFFFFF;\r\n    border: 1px solid #DADADA;\r\n    display: none;\r\n    float: left;\r\n    font-size: 11px;\r\n    left: 0;\r\n    list-style: none outside none;\r\n    margin: 0;\r\n    min-width: 160px;\r\n    position: absolute;\r\n    text-align: left;\r\n    top: 100%;\r\n    z-index: 1000;\r\n}\r\n\r\n.dropdown-menu li:first-child {\r\n    border-top: medium none;\r\n}\r\n\r\n.dropdown-menu li {\r\n    background: -moz-linear-gradient(center top , #FEFEFE 0%, #F5F5F5 100%) repeat scroll 0 0 transparent;\r\n    border-top: 1px solid #E4E4E4;\r\n}\r\n\r\n.dropdown-menu a {\r\n    clear: both;\r\n    color: #6A6A6A;\r\n    display: block;\r\n    font-size: 12px;\r\n    font-weight: normal;\r\n    padding: 8px 10px;\r\n    white-space: nowrap;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\n   BREADCRUMB STYLE\r\n-------------------------------------------------------------- */\r\n\r\n.subheader {\r\n    background: url("{T_THEME_PATH}/images/pattern2.png") repeat scroll center top #FFFFFF;\r\n    border-top: 4px solid #169FE6;\r\n	height: 80px;\r\n    padding: 0;\r\n}\r\n\r\n.top-menu {\r\n    margin-right: -20px;\r\n	height: 0;\r\n}\r\n\r\n.top-menu > li:first-child {\r\n    border-left: 1px solid #F0F0F0;\r\n}\r\n\r\n.dropdown-menu > li > a > i {\r\n    color: #555555;\r\n    float: left;\r\n    font-size: 14px;\r\n    margin-right: 6px;\r\n    margin-top: 3px;\r\n}\r\n\r\n.dropdown-menu .badge {\r\n    bottom: 0;\r\n    left: 35px;\r\n    position: relative;\r\n}\r\n\r\n.top-menu > li {\r\n    border-right: 1px solid #F0F0F0;\r\n    float: left;\r\n    list-style: none outside none;\r\n    position: relative;\r\n}\r\n\r\n.top-menu > li > a {\r\n    cursor: pointer;\r\n    display: block;\r\n    transition: all 0.2s ease-in-out 0s;\r\n	text-decoration: none;\r\n}\r\n\r\n.top-menu > li > ul > li > a {\r\n    padding: 5px;\r\n}\r\n\r\n.user-menu {\r\n    height: 20px;\r\n    padding: 6px 14px;\r\n}\r\n\r\n.user-menu > img {\r\n    display: inline-block;\r\n    float: left;\r\n    margin-right: 10px;\r\n    margin-top: -1px;\r\n	max-width:22px;\r\n	max-height:22px;\r\n}\r\n\r\n.user-menu > i {\r\n    color: #8C8C8C;\r\n    display: inline-block;\r\n    float: left;\r\n    font-size: 18px;\r\n    margin-right: 10px;\r\n    margin-top: 1px;\r\n}\r\n\r\n.user-menu > span {\r\n    color: gray;\r\n    display: block;\r\n    font-size: 12px;\r\n    font-weight: 600;\r\n    margin-left: 32px;\r\n    white-space: nowrap;\r\n}\r\n\r\n.top-menu .dropdown .caret {\r\n    border-top-color: gray;\r\n    display: inline-block;\r\n    margin: 1px 0 0 5px;\r\n}\r\n\r\n.top-menu > li > ul:after {\r\n    border-bottom: 5px solid white;\r\n    border-left: 6px solid transparent;\r\n    border-right: 6px solid transparent;\r\n    content: "";\r\n    display: inline-block;\r\n    left: 50%;\r\n    margin-left: -6px;\r\n    position: absolute;\r\n    top: -4px;\r\n}\r\n\r\n.sub-breadcrumb span.time {\r\n    color: #979595;\r\n    margin-left: 5px;\r\n}\r\n\r\n.sub-crumb{\r\n    height: 20px;\r\n    margin-left: -5px;\r\n    padding: 8px 1px;\r\n}\r\n\r\n.sub-crumb, .sub-crumb a{\r\n    color: #808080 ;\r\n}\r\n\r\n.sub-crumb > li > .divider {\r\n    color: #CCCCCC;\r\n    padding: 0 5px;\r\n}\r\n\r\n.sub-crumb > .active {\r\n    color: #999999;\r\n	font-size: 11px;\r\n	margin-top: 1px;\r\n}\r\n\r\n.sub-crumb, .sub-crumb li {\r\n    display: inline-block;\r\n    list-style: none outside none;\r\n    position: relative;\r\n	text-shadow: 0 1px 0 #FFFFFF;\r\n}\r\n\r\n.crumbs:after {\r\n    clear: both;\r\n    content: "";\r\n    display: block;\r\n}\r\n\r\n.crumbs {\r\n    padding: 0 20px;\r\n}\r\n\r\n.sub-crumb > .active i{\r\n    color: #BBBBBB;\r\n    margin-left: 0;\r\n}\r\n\r\n.sub-crumb a {\r\n    color: #666666;\r\n    margin-left: 0;\r\n    margin-right: 4px;\r\n}\r\n\r\n.tabs-nav, .crumbs {\r\n    background: -moz-linear-gradient(center top , #FFFFFF 0%, #F0F0F0 100%) repeat scroll 0 0 transparent;\r\n    border-bottom: 1px solid #C7C7C7;\r\n    box-shadow: 0 1px 0 white;\r\n    height: 32px;\r\n    margin: 0;\r\n}\r\n\r\n.crumbs .active > a {\r\n    margin-right: 4px;\r\n}\r\n\r\n.crumbs .active > a:last-child {\r\n    font-weight: bold;\r\n}\r\n\r\n/* Big icon style for admin and user login */\r\n.fxicon {\r\n    display: block;\r\n    height: 76px;\r\n	width: auto;\r\n    margin-left: 10px;\r\n    overflow: hidden;\r\n    position: relative;\r\n}\r\n\r\n.fxicon i {\r\n    font-size: 160px;\r\n    opacity: 0.1;\r\n    position: relative;\r\n    top: -40px;\r\n}\r\n\r\n.user-fxicon i {\r\n    font-size: 300px;\r\n    opacity: 0.1;\r\n    position: relative;\r\n    top: -10px;\r\n}\r\n\r\n.admin-fxicon i {\r\n    font-size: 280px;\r\n    opacity: 0.1;\r\n    position: relative;\r\n    top: -22px;\r\n}\r\n\r\n.admin-header-head {\r\n    height: 23px;\r\n    margin-top: -5px;\r\n    padding-top: 22px;\r\n}\r\n\r\n.admin-fxicon {\r\n    display: block;\r\n    height: 224px;\r\n    margin-top: -36px;\r\n    overflow: hidden;\r\n    position: relative;\r\n}\r\n\r\n.user-fxicon {\r\n    display: block;\r\n    height: 265px;\r\n    margin-top: -36px;\r\n    overflow: hidden;\r\n    position: relative;\r\n}\r\n\r\n.user-fxicon-remind {\r\n    height: 224px;\r\n}\r\n\r\n/* Extra Large icon style for admin and user login */\r\n\r\n.index-pos {\r\n    list-style-type: none;\r\n    margin: -60px 0 0 -10px;\r\n	width: 100%;\r\n}\r\n\r\nli.index-title h1, .titleLineCharts h2 {\r\n  font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n  font-size: 30px;\r\n  line-height: 25px;\r\n  color: #8C8C8C;\r\n  text-transform: uppercase;\r\n  font-style: normal;\r\n  font-weight: 400;\r\n}\r\n\r\nli.index-sub {\r\n    color: #8C8C8C;\r\n    font-size: 12px;\r\n    line-height: 9px;\r\n}\r\n\r\n.sub-breadcrumb {\r\n    background-color: #EFEFEF;\r\n    border-radius: 0 0 0 0;\r\n    box-shadow: 0 1px rgba(0, 0, 0, 0.1);\r\n    font-size: 11px;\r\n    height: 20px;\r\n    list-style: none outside none;\r\n    margin: 1px 0 25px;\r\n    padding: 2px 10px;\r\n}\r\n\r\n.sub-breadcrumb > .active {\r\n    color: #999999;\r\n}\r\n.sub-breadcrumb > li {\r\n    display: inline-block;\r\n    text-shadow: 0 1px 0 #FFFFFF;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nBREADCRUMB STYLE\r\n-------------------------------------------------------------- */\r\n \r\n/* --------------------------------------------------------------\r\nSOCIAL TOP BAR\r\n-------------------------------------------------------------- */\r\n\r\n.social-top  a {\r\n    color: #545861;\r\n    margin: 0 12px 0 0;\r\n    position: relative;\r\n    top: 8px;\r\n	right: 0;\r\n	text-decoration: none;\r\n}\r\n\r\n.social-top  a > i {\r\n  font-style: normal;\r\n  font-weight: 400;\r\n  font-size:20px;\r\n  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n}\r\n\r\n.google-plus-color {\r\n   color: #d34836;\r\n}\r\n \r\n.pinterest-color {\r\n	color: #cb2027;\r\n}\r\n\r\n.facebook-color {\r\n	color: #3b5998;\r\n}\r\n\r\n.twitter-color {\r\n	color: #00aced;\r\n}\r\n\r\n.rss-color {\r\n	color: #E48645;\r\n}\r\n\r\n.rss-color-forum {\r\n	color: #E48645;\r\n}\r\n\r\n.github-color {\r\n	color: #333333;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nSOCIAL TOP BAR\r\n-------------------------------------------------------------- */\r\n\r\n/* --------------------------------------------------------------\r\nSEARCH STYLE\r\n-------------------------------------------------------------- */\r\n\r\n.search-box form {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\n.search-box {\r\n    margin-right: 10px;\r\n    margin-top: -60px;\r\n}\r\n\r\n.search-box form input {\r\n    font-family: inherit;\r\n    font-size: 15px;\r\n    font-style: normal;\r\n    text-indent: 25px;\r\n	background: url("{T_THEME_PATH}/images/search.png") no-repeat scroll 14px center #FFFFFF;\r\n    border-color: #CFDAE1;\r\n    border-radius: 500px 500px 500px 500px;\r\n    border-style: solid;\r\n    border-width: 1px;\r\n    color: #999999;\r\n    overflow: hidden;\r\n    padding: 12px 22px;\r\n    position: relative;\r\n	width: 25px;\r\n	-webkit-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    -moz-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    -o-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n}\r\n\r\n.search-box form input:focus {\r\n    border-color: #DFE6EB;\r\n    box-shadow: none;\r\n    cursor: text;\r\n    width: 180px;\r\n	-webkit-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    -moz-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    -o-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n    transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;\r\n}\r\n\r\n.search-box form input:hover:not(:focus) {\r\n    cursor: pointer;\r\n}\r\n\r\n.search-box form input:hover,\r\n.search-box form input:focus {\r\n  outline: none;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nSEARCH STYLE\r\n-------------------------------------------------------------- */\r\n \r\n/* --------------------------------------------------------------\r\nHEADER STYLE\r\n-------------------------------------------------------------- */\r\n\r\nheader {\r\n    background: none repeat scroll 0 0 white;\r\n    border-radius: 4px 4px 0 0;\r\n    display: block;\r\n    padding: 45px 15px 15px;\r\n}\r\n\r\nheader .topArea {\r\n    display: table;\r\n    width: 100%;\r\n}\r\n\r\nheader .leftArea {\r\n    display: inline;\r\n    float: left;\r\n    text-align: center;\r\n}\r\n\r\n.logo span {\r\n    color: #169FE6;\r\n	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);\r\n}\r\n\r\nheader .leftArea .logo {\r\n    color: #8C8C8C;\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 70px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    line-height: 50px;\r\n    text-decoration: none;\r\n	  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n    text-transform: uppercase;\r\n}\r\n\r\nheader .leftArea .site-info {\r\n    color: #999999;\r\n    display: block;\r\n    font-size: 11px;\r\n	-webkit-font-smoothing: antialiased;\r\n	-webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n    margin: 0;\r\n    vertical-align: middle;\r\n}\r\n\r\n.site-info i {\r\nfont-size: 14px;\r\n}\r\n\r\n.logo-transition a::before,\r\n.logo-transition a::after {\r\n  display: inline-block;\r\n  opacity: 0;\r\n  -webkit-transition: -webkit-transform 0.3s, opacity 0.2s;\r\n  -moz-transition: -moz-transform 0.3s, opacity 0.2s;\r\n  transition: transform 0.3s, opacity 0.2s;\r\n}\r\n\r\n.logo-transition a::before {\r\n  margin-right: 3px;\r\n  content: ''{'';\r\n  color:#8C8C8C;\r\n  line-height: 16px;\r\n  font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 70px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n  -webkit-transform: translateX(50px);\r\n  -moz-transform: translateX(50px);\r\n  transform: translateX(50px);\r\n}\r\n\r\n.logo-transition a::after {\r\n  margin-left: 3px;\r\n  content: ''}'';\r\n  color:#169FE6;\r\n  line-height: 16px;\r\n  font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 70px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n  -webkit-transform: translateX(-50px);\r\n  -moz-transform: translateX(-50px);\r\n  transform: translateX(-50px);\r\n}\r\n\r\n.logo-transition a:hover::before,\r\n.logo-transition a:hover::after,\r\n.logo-transition a:focus::before,\r\n.logo-transition a:focus::after {\r\n  opacity: 1;\r\n  -webkit-transform: translateX(0px);\r\n  -moz-transform: translateX(0px);\r\n  transform: translateX(0px);\r\n  -moz-transform-style: preserve-3d;\r\n-ms-transform-style: preserve-3d;\r\n-webkit-transform-style: preserve-3d;\r\ntransform-style: preserve-3d;\r\n}\r\n\r\ndiv.logo-transition a:hover,\r\ndiv.logo-transition a:focus {\r\n  outline: none;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nHEADER STYLE\r\n-------------------------------------------------------------- */\r\n\r\n/* --------------------------------------------------------------\r\nMAIN NAVIGATION\r\n-------------------------------------------------------------- */\r\n.navBtn {\r\n  display: none;\r\n}\r\n\r\n.mainnav {\r\ndisplay: table-cell;\r\n    margin-top: 2px;\r\n    position: relative;\r\n    vertical-align: middle;\r\n    z-index: 999;\r\n}\r\n.mainnav li {\r\n  text-align: left;\r\n}\r\n\r\n.mainnav > ul {\r\n  float: right;\r\n}\r\n\r\n.mainnav > ul > li {\r\n  position: relative;\r\n  float: left;\r\n  list-style: none;\r\n  filter: inherit;\r\n  display: block;\r\n  width: auto;\r\n  height: 60px;\r\n}\r\n\r\n.mainnav > ul > li > a:hover,\r\n.mainnav > ul > li > a:focus {\r\n	outline: none;\r\n}\r\n\r\n.mainnav > ul > li > a {\r\n    color: #8C8C8C;\r\n    display: block;\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n	-webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n    font-size: 28px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    line-height: 20px;\r\n    padding: 10px 5px 25px;\r\n    text-decoration: none;\r\n    text-transform: uppercase;\r\n}\r\n\r\n.mainnav > ul > li > p {\r\n  position: absolute;\r\n  top: 31px;\r\n  left: 5px;\r\n  line-height: 21px;\r\n  color: #999999;\r\n  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n  font-style: normal;\r\n  font-weight: 400;\r\n  font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n  font-size: 11px;\r\n}\r\n\r\n.has-sub i {\r\n   font-size: 20px;\r\n   vertical-align: middle;\r\n}\r\n\r\n.mainnav > ul > li > a > i {\r\n    background: none repeat scroll 0 0 #333333;\r\n    color: #FFFFFF;\r\n    font-size: 11px;\r\n    line-height: 10px;\r\n    margin-left: 5px;\r\n    padding: 0 3px;\r\n    transition: all 0.2s ease 0s;\r\n   position: absolute;\r\n}\r\n\r\n.nav-icon [class*="has-sub"] {\r\n    -webkit-transition-duration: 0.9s;\r\n    -moz-transition-duration: 0.9s;\r\n    -o-transition-duration: 0.9s;\r\n    transition-duration: 0.9s;\r\n    transform-style: preserve-3d;\r\n   -ms-transform-style: preserve-3d;\r\n   -moz-transform-style: preserve-3d;\r\n   -webkit-transform-style: preserve-3d;\r\n    -webkit-transition-property: -webkit-transform, color;\r\n    -moz-transition-property: -moz-transform, color;\r\n    -o-transition-property: -o-transform, color;\r\n    transition-property: transform, color;\r\n	z-index: -1;\r\n}\r\n\r\n[class*="has-sub"] {\r\n    display: inline-block;\r\n}\r\n\r\n.nav-icon:hover [class*="has-sub"] {\r\n    -webkit-transform:rotate(360deg);\r\n    -moz-transform:rotate(360deg);\r\n    -o-transform:rotate(360deg);\r\n    transform: rotate(360deg);\r\n	color: #169FE6;\r\n}\r\n\r\n.nav-icon {\r\n    margin-left: 5px;\r\n}\r\n\r\n.nav-icon:last-child{\r\n    margin-right: -5px;\r\n}\r\n\r\n.mainnav > ul > li:hover > ul,\r\n.mainnav > ul > li:hover {\r\n  -khtml-opacity: 1;\r\n  -moz-opacity: 1;\r\n  filter: alpha(opacity=100);\r\n  -ms-filter: "alpha(opacity=100)";\r\n  opacity: 1;\r\n  visibility: visible;\r\n}\r\n\r\n.greydout {\r\n  -webkit-opacity: 0.25;\r\n  -moz-opacity: 0.25;\r\n  opacity: 0.25;\r\n-webkit-transition: all 0.2s ease;\r\n  -moz-transition: all 0.2s ease;\r\n  -ms-transition: all 0.2s ease;\r\n  -o-transition: all 0.2s ease;\r\n  transition: all 0.2s ease;\r\n} \r\n\r\n.submenu {\r\n  position: absolute;\r\n  top: 65px;\r\n  left: -24px;\r\n  background-color: rgba(255, 255, 255, 0.97);\r\n  -webkit-box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);\r\n  -moz-box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);\r\n  box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);\r\n  border-bottom: 4px solid #169FE6;\r\n  border-bottom-left-radius: 3px;\r\n   border-bottom-right-radius: 3px;\r\n  visibility: hidden;\r\n  -khtml-opacity: 0;\r\n  -moz-opacity: 0;\r\n  filter: alpha(opacity=0);\r\n  -ms-filter: "alpha(opacity=0)";\r\n  opacity: 0;\r\n}\r\n\r\n.submenu {\r\n  padding: 0 15px;\r\n}\r\n\r\n.submenu li {\r\n  position: relative;\r\n  list-style: none;\r\n}\r\n\r\n.submenu li > span {\r\n  position: absolute;\r\n  width: 80px;\r\n  height: 1px;\r\n  bottom: 0;\r\n  left: 0;\r\n  background-color: #e4e4e4;\r\n  transition: background 0.3s ease-in-out, width 0.3s ease-in-out;\r\n  -webkit-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;\r\n  -moz-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;\r\n  -o-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;\r\n}\r\n\r\n.submenu li:hover > a {\r\n  color: #169FE6;\r\n  text-decoration: none;\r\n}\r\n\r\n.submenu li:hover > span {\r\n  width: 100%;\r\n  background-color: #169FE6;\r\n}\r\n\r\n.submenu li:nth-last-child(1) > span {\r\n  display: none;\r\n}\r\n\r\n.submenu a {\r\n  display: block;\r\n  font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n  font-style: normal;\r\n  font-weight: 400;\r\n  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */\r\n  font-size: 14px;\r\n  line-height: 16px;\r\n  padding: 10px 0;\r\n  color: #999999;\r\n  min-width: 160px;\r\n  max-width: 200px;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nMAIN NAVIGATION\r\n-------------------------------------------------------------- */\r\n\r\n/* MOBILE NAVIGATION\r\n----------------------------------------*/\r\n\r\n.flexnav-show {\r\n    max-height: 2000px;\r\n    opacity: 1;\r\n	 -webkit-transition: all .5s ease-in-out;\r\n    -moz-transition: all .5s ease-in-out;\r\n    -ms-transition: all .5s ease-in-out;\r\n    transition: all .5s ease-in-out; \r\n}\r\n\r\n.flexnav a:focus {\r\n   outline: medium none;\r\n   text-decoration: none;\r\n}\r\n\r\n.flexnav li {\r\n    font-size: 100%;\r\n    position: relative;\r\n    overflow: hidden; \r\n	display:block;\r\n}\r\n	\r\n.flexnav li a {\r\n    position: relative;\r\n    display: block;\r\n    padding: 0.94em;\r\n    z-index: 2;\r\n    overflow: hidden;\r\n    color: #555555;\r\n	font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 15px;\r\n	text-transform: uppercase;\r\n	background: none repeat scroll 0 0 rgba(220, 223, 225, 0.75);\r\n    border-bottom: 1px solid rgba(0, 0, 0, 0.15); \r\n}\r\n	\r\n.flexnav li ul {\r\n    width: 100%; \r\n}\r\n	\r\n.flexnav li ul li {\r\n    font-size: 100%;\r\n    position: relative;\r\n    overflow: hidden; \r\n}\r\n\r\n.flexnav li ul.flexnav-show li {\r\n    overflow: visible; \r\n}\r\n	\r\n.flexnav li ul li a {\r\n    display: block;\r\n    background: #D5D9DA; \r\n}\r\n	\r\n.flexnav ul li ul li a {\r\n    background: #C7CDCE; \r\n}\r\n\r\n.flexnav ul li ul li ul li a {\r\n    background: #cbcbc9; \r\n}\r\n\r\n.flexnav li a:hover {\r\n   background-color:#EEEEEE;\r\n}\r\n\r\n.flexnav .touch-button {\r\n    position: absolute;\r\n    z-index: 999;\r\n    top: 0;\r\n    right: 0;\r\n    width: 50px;\r\n    height: 50px;\r\n    display: inline-block;\r\n    background: #acaca1;\r\n    background: rgba(0, 0, 0, 0.075);\r\n	border-bottom: 0 none;\r\n    text-align: center; \r\n}\r\n	\r\n.flexnav .touch-button:hover {\r\n    cursor: pointer; \r\n}\r\n\r\n.flexnav .touch-button .navicon {\r\n    position: relative;\r\n    top: -4px;\r\n    font-size: 22px;\r\n    color: #666; \r\n}\r\n	\r\nul.flexnav, .viewdetails {\r\n    margin: 0 0 10px;\r\n}\r\n\r\n\r\n/* MOBILE NAVIGATION\r\n----------------------------------------*/\r\n\r\n/*---------------------------------------\r\n	RESPONSIVE QUERIES\r\n-----------------------------------------*/\r\n \r\n/* Logo and site-info Tweak for best display while resizing */\r\n@media (min-width: 997px) and (max-width: 1217px) {\r\n\r\n  td .row-icon, .topic-icon {\r\n    display:none;\r\n}\r\n\r\n\r\nheader .leftArea .logo {\r\n    float:none;\r\n}\r\n\r\n}\r\n\r\n\r\n/* Responsive menu settings */\r\n\r\n@media (min-width: 768px) and (max-width: 979px) {\r\n\r\nheader .mainnav{\r\n    display: block;\r\n    float: none;\r\n    text-align: center;\r\n}\r\n\r\n.footable-first-column {\r\n    width: 58%;\r\n}\r\n\r\n.large20 {\r\n    width: 26%;\r\n}\r\n\r\ntd .row-icon, .topic-icon {\r\n    display:none;\r\n}\r\n\r\nheader .leftArea {\r\n    display: table-caption;\r\n    float: none;\r\n    margin-bottom: -6%;\r\n    text-align: center;\r\n}\r\n\r\nheader .leftArea .logo {\r\n    display: block;\r\n    float: none;\r\n    margin: 0 0 5px;\r\n}\r\n\r\n.header {\r\n    height: 200px;\r\n}\r\n\r\n.header .logo {\r\n    left: 50%;\r\n    margin-left: 5px;\r\n}\r\n\r\n.mainnav {\r\n    display: block;\r\n    text-align: center;\r\n    padding-top: 80px;\r\n}\r\n\r\n.mainnav > ul {\r\n    float: none;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    display: table;\r\n    *display: inline;\r\n    *zoom: 1;\r\n	margin-top: -35px;\r\n}\r\n  \r\n.user-profile-tab {\r\n    margin: 0 !important;\r\n}\r\n \r\n.user-profile-output {\r\n    margin-left: 55px !important;\r\n}\r\n\r\n.user-profile-tag {\r\n    width: 60px !important;\r\n}\r\n\r\n  \r\n}\r\n\r\n@media (max-width: 979px) {\r\n\r\n\r\n.nav-collapse .nav > li > a:hover,\r\n.nav-collapse .nav > li > a:focus,\r\n.nav-collapse .dropdown-menu a:hover,\r\n.nav-collapse .dropdown-menu a:focus {\r\n    background-color: transparent !important;\r\n}\r\n\r\n.nav-collapse .dropdown-menu {\r\n    margin: 0 !important;\r\n}\r\n  \r\n#footerContent .row-fluid .span3 {\r\n    width: 46.9282% !important;\r\n}\r\n  \r\n.dropdown-menu li {\r\n    background: none repeat scroll 0 0 rgba(0, 0, 0, 0) !important;\r\n}\r\n\r\n.caret {\r\n    border-top: 4px solid #8C8C8C !important;\r\n}\r\n\r\n.table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child, .table-bordered thead:first-child tr:first-child > th:first-child {\r\n    border-top-right-radius: 0;\r\n}\r\n\r\n}\r\n\r\n\r\n\r\n@media (max-width: 767px) {\r\n.header {\r\n    height: auto;\r\n}\r\n\r\n.header > .line {\r\n    top: 107px;\r\n    bottom: auto;\r\n}\r\n  \r\n.large20 {\r\n    width: 35%;\r\n}\r\n  \r\nheader .leftArea {\r\n    float: none;\r\n}\r\n  \r\n.navBtn {\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 28px;\r\n    line-height: 45px;\r\n    position: relative;\r\n    display: block;\r\n    width: 100%;\r\n    height: 40px;\r\n    background-color: #169FE6;\r\n    color: #fff;\r\n    -moz-transition: background-color 0.3s ease-out;\r\n    -webkit-transition: background-color 0.3s ease-out;\r\n    -o-transition: background-color 0.3s ease-out;\r\n	transition: background-color 0.3s ease-out;\r\n}\r\n  \r\n.navBtn > a {\r\n    border-left: 1px solid #127FB8;\r\n    color: #FFFFFF;\r\n    cursor: pointer;\r\n    display: block;\r\n    float: right;\r\n    font-size: 28px;\r\n    height: 38px;\r\n    line-height: 20px;\r\n    margin: 1px 5px 0 0;\r\n    padding: 10px;\r\n    text-decoration: none;\r\n    width: 45px;\r\n}\r\n\r\n.navBtn > a:hover {\r\n    color: #FAFAFA;\r\n	opacity:0.8;\r\n}\r\n\r\n.navBtn > a:focus {\r\n    outline:medium none;\r\n}\r\n\r\n.navBtn > span {\r\n    margin-left:10px;\r\n}\r\n\r\ntd .row-icon, .topic-icon {\r\n    display:none;\r\n}\r\n\r\n.mainnav {\r\n  display: block;\r\n    position: relative;\r\n    width: 100%;\r\n    height: 50px;\r\n    margin: 0 auto;\r\n    padding-top: 10px;\r\n}\r\n  \r\n.mainnav > ul {\r\n    display: none;\r\n    position: absolute;\r\n    width: 100%;\r\n    height: auto;\r\n    top: 176px;\r\n    left: 0;\r\n    -webkit-box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);\r\n    -moz-box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);\r\n    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);\r\n}\r\n\r\n/* Mobile menu specific settings */\r\n  \r\n.mainnav-mob > ul > li {\r\n    position: relative;\r\n    border: 1px solid #f6f6f6;\r\n    float: none;\r\n    width: auto;\r\n    height: auto;\r\n    background-color: #ffffff;\r\n}\r\n  \r\n.mainnav-mob > ul > li > a {\r\n    display: block;\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    font-size: 16px;\r\n    line-height: 16px;\r\n    color: #999999;\r\n    transition: color 0.3s ease-out;\r\n    -moz-transition: color 0.3s ease-out;\r\n    -webkit-transition: color 0.3s ease-out;\r\n    -o-transition: color 0.3s ease-out;\r\n}\r\n  \r\n.mainnav-mob > ul > li > p {\r\n   display: none;\r\n}\r\n\r\n.mainnav-mob > ul > li:hover,\r\n.mainnav-mob > ul > li.current {\r\n    border-color: #f6f6f6;\r\n}\r\n\r\n.mainnav-mob > ul > li:hover > a,\r\n.mainnav-mob > ul > li.current > a {\r\n   color: #03b8df;\r\n}\r\n  \r\n \r\n/* Mobile menu specific settings */\r\n  \r\n.submenu {\r\n    position: relative;\r\n    top: auto;\r\n    width: 99.8%;\r\n    visibility: visible;\r\n    -khtml-opacity: 1;\r\n    -moz-opacity: 1;\r\n    filter: alpha(opacity=100);\r\n    -ms-filter: "alpha(opacity=100)";\r\n    opacity: 1;\r\n    border-bottom: 2px inset;\r\n    padding: 0;\r\n    -webkit-box-shadow: none;\r\n    -moz-box-shadow: none;\r\n    box-shadow: none;\r\n}\r\n\r\n.submenu li {\r\n    border-top: 1px solid #f6f6f6;\r\n    padding: 0 6px;\r\n}\r\n\r\n.submenu li a {\r\n    font-size: 12px;\r\n    padding: 8px 0;\r\n    max-width: 100%;\r\n}\r\n\r\n.submenu li > span,\r\n.dark .submenu li{\r\n    border-color: #494949;\r\n}\r\n  \r\n.logo-transition a:before, .logo-transition a:after {\r\n    display: none;\r\n}\r\n	\r\n.nav-tabs > li {\r\n    float:none;\r\n}\r\n\r\n.mobile-online {\r\n    border-bottom-right-radius: 6px;\r\n    border-right: 4px solid #31D83A !important;\r\n    border-top-right-radius: 6px;\r\n}\r\n\r\nbody {\r\n    padding-left: 10px;\r\n    padding-right: 10px;\r\n}\r\n\r\n}\r\n\r\n@media (max-width: 468px) {\r\n\r\nbody {\r\n    padding-left: 6px;\r\n    padding-right: 6px;\r\n	font-size:15px;\r\n}\r\n\r\n.logo > img {\r\n    display: block;\r\n    width: 100%;\r\n}\r\n\r\n#wrap {\r\n    margin: 10px auto;\r\n    padding: 6px;\r\n}\r\n\r\n.padding_0_40 {\r\n    padding: 8px;\r\n}\r\n\r\n.postbody h3 {\r\n    font-size: 1.3em;\r\n}\r\n\r\n.timepost {\r\n    font-size: 0.9em;\r\n}\r\n\r\n.postbody .content {\r\n    font-size: 1em;\r\n}\r\n\r\nheader .leftArea .logo {\r\n    font-size: 66px;\r\n}\r\n\r\n.nav-tabs > li {\r\n    float:none;\r\n}\r\n	\r\n.table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child, .table-bordered thead:first-child tr:first-child > th:first-child {\r\n	border-top-right-radius: 3px;\r\n}\r\n\r\n.mobile-post {\r\n    background: none repeat scroll 0 0 #ECEBEC;\r\n    float: right;\r\n    padding: 10px 15px;\r\n	font-size: 16px;\r\n}\r\n\r\n.framed-ucp {\r\n    padding: 10px;\r\n}\r\n\r\nfooter .interact a {\r\n    font-size: 15px;\r\n}\r\n	\r\n}\r\n\r\n/*-----------------------------------------------\r\n	RESPONSIVE QUERIES\r\n------------------------------------------------- */\r\n \r\n/*------------------------------------------------\r\n	FOOTER LAYOUT\r\n-------------------------------------------------- */\r\n\r\nfooter {\r\n    border-top: 3px solid #169FE6;\r\n    display: block;\r\n	position: relative;\r\n	margin-top: 20px;\r\n}\r\n\r\n#footerContent blockquote p {\r\n	color: #8C8C8C;\r\n	font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n	font-size: 20px;\r\n}\r\n\r\n#footerContent blockquote p span {\r\n    color:#169FE6;\r\n}\r\n\r\nfooter a {\r\n   color: #555555;\r\n}\r\n\r\n/*\r\n * Footer block\r\n */\r\n\r\n\r\n/*\r\n* footer recent topics\r\n*/\r\n \r\n.recent-row {\r\n    min-height: 318px;\r\n}\r\n\r\n.recent-topic {\r\n    line-height: 20px;\r\n    margin: 0 0 10px;\r\n}\r\n\r\n.recent-topic .blogImage {\r\n    float: left;\r\n    margin-right: 10px;\r\n}\r\n\r\n.recent-topic a, .links a {\r\n    color: #555555;\r\n	margin-top: 3px;\r\n}\r\n\r\n.blogImage {\r\n    border: 1px solid #E4E4E4;\r\n    border-radius: 3px;\r\n    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.3);\r\n    width: 50px;\r\n	height:51px;\r\n    transition: all 0.2s ease 0s;\r\n}\r\n\r\n.user1 {\r\n	background: url("{T_THEME_PATH}/images/user1.png") no-repeat;\r\n	background-size: 100% 100%;\r\n}\r\n\r\n.user2 {\r\n	background: url("{T_THEME_PATH}/images/user2.png") no-repeat;\r\n	background-size: 100% 100%;\r\n}\r\n\r\n.user3 {\r\n	background: url("{T_THEME_PATH}/images/user3.png") no-repeat;\r\n	background-size: 100% 100%;\r\n}\r\n\r\n.user4 {\r\n	background: url("{T_THEME_PATH}/images/user4.png") no-repeat;\r\n	background-size: 100% 100%;\r\n}\r\n\r\n.recent-topic a:first-child:hover  {\r\n    opacity:0.8;\r\n    transition: all 0.2s ease 0s;\r\n}\r\n\r\n.recent-topic p {\r\n    color: #999999;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    font-size: 12px;\r\n    line-height: 18px;\r\n    margin: 0;\r\n}\r\n\r\n.text-overflow {\r\n    overflow: hidden;\r\n    text-overflow: ellipsis;\r\n    white-space: nowrap;\r\n}\r\n\r\n/* Twitter layout */\r\n\r\n.twitter-layout:before {\r\n    color: #169FE6;\r\n    content: "\\f099";\r\n    display: block;\r\n    font-family: FontAwesome;\r\n    font-size: 18px;\r\n    left: 0;\r\n    position: absolute;\r\n    top: -1px;\r\n}\r\n\r\n.twitter-layout p {\r\n	margin: 0 0 3px !important;\r\n	text-indent: 18px;\r\n	 -ms-word-break: break-all;\r\n     word-break: break-all;\r\n     /* Non standard for webkit */\r\n     word-break: break-word;\r\n-webkit-hyphens: auto;\r\n   -moz-hyphens: auto;\r\n    -ms-hyphens: auto;\r\n        hyphens: auto;\r\n}\r\n\r\n\r\n.twitter-layout {\r\n    line-height: 17px;\r\n    margin-bottom: 24px;\r\n    padding: 0 0 10px;\r\n    position: relative;\r\n}\r\n\r\n.twitter-link {\r\n    margin-right: 10px;\r\n}\r\n\r\n.twitter-time {\r\n    line-height: 19px;\r\n	color: #999999;\r\n    font-family: inherit;\r\n    font-size: 11px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n	\r\n}\r\n\r\n.tweet {\r\n    color: #555555;\r\n    font-size: 13px;\r\n}\r\n\r\n /*\r\n * temp fix for cross imgs in tweets\r\n */\r\n.tweet > img {\r\n    display: none;\r\n}\r\n\r\n /*\r\n * footer recent topics\r\n */\r\n \r\nfooter #footerContent {\r\n    background-color: #F9F9F9;\r\n	box-shadow: 0 3px 0 rgba(0, 0, 0, 0.1);\r\n    padding: 10px 15px 10px;\r\n    position: relative;\r\n}\r\n\r\n\r\nfooter .navList {\r\n    list-style: none outside none;\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\nfooter .navList li:first-child a {\r\n    padding-top: 0;\r\n}\r\n\r\nfooter .navList li a {\r\n    border-bottom: 1px dashed #D3D3D3;\r\n    display: block;\r\n    padding: 7px 0;\r\n	text-decoration: none;\r\n}\r\n\r\nfooter .bottomLinks {\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: inherit;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    margin-bottom: -1%;\r\n    margin-top: 10px;\r\n}\r\n\r\nfooter .bottomLinks i.rosso {\r\n	color: #F27490;\r\n}\r\n\r\nfooter .bottomLinks i.earth {\r\n	color: #669933;\r\n}\r\n\r\nfooter .bottomLinks small {\r\n	color: #A5A5A5;\r\n}\r\n\r\nfooter .bottomLinks small a {\r\n	color: #169FE6;\r\n}\r\n\r\nfooter #footerBottom {\r\n    position: absolute;\r\n    width: 100%;\r\n}\r\n\r\nfooter #footerBottom .disclaimer {\r\n    color: #686868;\r\n    float: left;\r\n    font-size: 11px;\r\n    font-style: italic;\r\n    margin: 15px 0 0 5px;\r\n}\r\n\r\nfooter .bottomLinks a {\r\n    border-bottom: 1px solid rgba(0, 0, 0, 0.1);\r\n    padding-bottom: 1px;\r\n    color: white;\r\n    display: inline-block;\r\n    font-size: 11px;\r\n    line-height: normal;\r\n    padding: 0 2px;\r\n	text-decoration:none;\r\n}\r\n\r\nfooter .bottomLinks a:hover {\r\n    border-bottom: 1px solid #169FE6;\r\n}\r\n\r\nfooter .interact a {\r\n    padding: 1px;\r\n	color:#999999;\r\n}\r\n\r\nfooter .interact a:hover{\r\n	color:#169FE6;\r\n}\r\n\r\n /*------------------------------------------------------------------------------\r\n	FOOTER LAYOUT\r\n -------------------------------------------------------------------------------*/\r\n\r\n/*-------------------------------\r\n	RADIO CHECKBOX STYLE\r\n ------------------------------*/\r\n/*-------------------------------\r\n	RADIO CHECKBOX STYLE DISABLED TO TEST \r\n\r\ninput[type="checkbox"][disabled] + label span {\r\n    display:inline-block;\r\n    width:19px;\r\n    height:19px;\r\n    margin:-1px 4px 0 0;\r\n    vertical-align:middle;\r\n    background:url(''/img/checkboxes.png'') -38px top no-repeat;\r\n}\r\n\r\ninput[type="checkbox"][disabled]:checked + label span { \r\nbackground:url(''/img/checkboxes.png'') -57px top no-repeat; }\r\n\r\n	RADIO CHECKBOX STYLE DISABLED TO TEST\r\n ------------------------------*/\r\n\r\ninput[type="checkbox"],input[type="radio"]{\r\n  display:none;\r\n}\r\n\r\ninput[type="checkbox"]+label,input[type="radio"]+label{\r\n  cursor:pointer;\r\n}\r\n\r\ninput[type="checkbox"]+label:before,input[type="radio"]+label:before{\r\n  content:"";\r\n  display:inline-block;\r\n  height:19px;\r\n  margin:-3px 2px 0 4px;\r\n  vertical-align:middle;\r\n  width:19px;\r\n}\r\n\r\ninput[type="checkbox"]+label:before{\r\n  background:url("{T_THEME_PATH}/images/radio-check.png")left top no-repeat;\r\n}\r\n\r\ninput[type="checkbox"]:checked+label:before{\r\n  background:url("{T_THEME_PATH}/images/radio-check.png")-19px top no-repeat;\r\n}\r\n\r\ninput[type="radio"]+label:before{\r\n  background:url("{T_THEME_PATH}/images/radio-check.png")-38px top no-repeat;\r\n}\r\n\r\ninput[type="radio"]:checked+label:before{\r\n  background:url("{T_THEME_PATH}/images/radio-check.png")-57px top no-repeat;\r\n}\r\n\r\ninput[type="checkbox"]:checked+label,input[type="radio"]:checked+label{\r\n  font-weight:bold;\r\n}\r\n\r\n.selector, .checker, .button, .radio, .uploader {\r\n    display: inline-block;\r\n    vertical-align: middle;\r\n}\r\n\r\n.controls > .radio, .controls > .selector, .controls > .checkbox {\r\n    display: inline-block;\r\n    margin: 5px 15px 10px 0 !important;\r\n    padding: 0 !important;\r\n}\r\n\r\n.radio-inline, .checkbox-inline {\r\n    padding-left: 0;\r\n}\r\n\r\n.check-control {\r\n    display: block;\r\n    font-weight: normal;\r\n}\r\n\r\n.radio label, .checkbox label {\r\n    padding-left: 5px;\r\n}\r\n\r\n.poll-na {\r\n    border-radius: 0.25em;\r\n    color: #888888;\r\n    display: inline;\r\n    font-size: 75%;\r\n    font-weight: bold;\r\n    line-height: 1;\r\n    padding: 0.2em 0.6em 0.3em;\r\n    text-align: center;\r\n    vertical-align: baseline;\r\n    white-space: nowrap;\r\n}\r\n\r\n.panel-poll {\r\n    border-left: 2px solid #DBDBDB;\r\n    border-right: 2px solid #DBDBDB;\r\n    border-top: 2px solid #DBDBDB;\r\n    box-shadow: 0 3px 0 0 #DBDBDB;\r\n}\r\n/*-------------------------------\r\n	RADIO CHECKBOX STYLE\r\n ------------------------------*/\r\n \r\n/*-------------------------------\r\n	FORMS\r\n ------------------------------*/\r\n \r\n.form-actions {\r\n    background: linear-gradient(to bottom, #FFFFFF 0%, #F5F5F5 100%) repeat scroll 0 0 transparent;\r\n    border: 1px dashed #C9C9C9;\r\n    box-shadow: 0 1px 1px #FFFFFF inset, 0 1px 1px rgba(0, 0, 0, 0.05);\r\n    margin-bottom: 0;\r\n    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;\r\n}\r\n\r\n.form-actions {\r\n    text-align: center;\r\n	padding: 15px;\r\n}\r\n\r\n.control-group {\r\n    border-bottom: 1px dashed #C9C9C9;\r\n	margin-top:10px;\r\n	padding-bottom: 10px;\r\n}\r\n\r\n.control-label {\r\n    font-weight: bold;\r\n	display:block;\r\n}\r\n\r\n/*** \r\n.form-control {\r\n    margin-bottom:10px;\r\n}\r\n***/\r\n\r\n\r\n/*** icons on input fields***/\r\n\r\n.input-icon.left i {\r\n    color: #CCCCCC;\r\n    display: block;\r\n    font-size: 16px;\r\n    height: 16px;\r\n    margin: 7px 2px 4px 10px;\r\n    position: absolute;\r\n    text-align: center;\r\n    width: 16px;\r\n    z-index: 999;\r\n}\r\n\r\n.input-icon.left input {\r\n    padding-left: 33px ;\r\n}\r\n\r\n.input-icon input {\r\n    padding-right: 25px ;\r\n}\r\n\r\n/*------------------------------\r\n	FORMS\r\n ------------------------------*/\r\n \r\n/*-------------------------------\r\n	USER PROFILE AND GALLERY\r\n------------------------------*/\r\n \r\n/*-- Responsive avatars fix for Bootsrtap3x --*/\r\n.avatar-frame img  {\r\n  width: auto\\9;\r\n  height: auto;\r\n  max-width: 100%;\r\n  vertical-align: middle;\r\n  border: 0;\r\n  -ms-interpolation-mode: bicubic;\r\n}\r\n\r\n \r\n.avatar-frame img{border:6px solid #f6f6f6;}\r\n.avatar-frame img{\r\n	-moz-box-shadow: 0 0 3px rgba(0,0,0,.3); \r\n	-webkit-box-shadow: 0 0 3px rgba(0,0,0,.3); \r\n	box-shadow: 0 0 3px rgba(0,0,0,.3); \r\n}\r\n\r\n.user-profile-avatar {\r\n    margin: -10px auto 10px;\r\n    text-align: center;\r\n}\r\n \r\n.user-profile-tab {\r\n    border-left: 1px dashed #DDDDDD;\r\n    padding: 10px;\r\n}\r\n\r\n.user-profile-row {\r\n    height: 22px;\r\n    line-height: 16px;\r\n    position: relative;\r\n}\r\n\r\n.user-profile-row{\r\n	border-top: 1px dotted #D5E4F1;\r\n}\r\n\r\n.user-profile-row:nth-child(2) {\r\n	border-top: medium none;\r\n}\r\n\r\n.user-profile-tag {\r\n    background-color: rgba(0, 0, 0, 0);\r\n    bottom: 0;\r\n    color: #667E99;\r\n	font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-weight: 700;\r\n    left: 0;\r\n    padding: 3px 5px 5px 0;\r\n    position: absolute;\r\n    text-align: center;\r\n    top: 0;\r\n    width: 62px;\r\n}\r\n\r\n.user-profile-output {\r\n	color: #495D60;\r\n    margin-left: 68px;\r\n    overflow: hidden;\r\n    padding: 4px;\r\n    text-overflow: ellipsis;\r\n    white-space: nowrap;\r\n}\r\n\r\n.user-profile-output-contact {\r\n    margin-left: 65px;\r\n    padding: 2px;\r\n}\r\n\r\n.user-profile-output-contact ul li a {\r\n    margin-left: -6px;\r\n    margin-bottom: 4px;\r\n}\r\n\r\n.timepost {\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    margin-top: -6px;\r\n	color: #8C8C8C;\r\n}\r\n\r\n.user-profile-output-contact ul.inline > li {\r\n    margin-left: -3px;\r\n    padding-right: 2px;\r\n}\r\n\r\n\r\n#gallery input[type="radio"]:checked + label { \r\n    background-color:#EEEEEE;\r\n}\r\n\r\n/*-------------------------------\r\n	ribbon on-line viewtopic and user profile style\r\n------------------------------*/\r\n\r\n.ribbon-wrapper.small {\r\n    height: 68px;\r\n    width: 65px;\r\n}\r\n.ribbon-wrapper {\r\n    height: 88px;\r\n    overflow: hidden;\r\n    position: absolute;\r\n    right: -3px;\r\n    top: -3px;\r\n    width: 85px;\r\n}\r\n\r\n.ribbon-wrapper.small .ribbon {\r\n    padding: 0;\r\n    width: 90px;\r\n}\r\n.ribbon-wrapper .ribbon.on-line{\r\n    background-color: #31D83A;\r\n}\r\n\r\n.ribbon-wrapper .ribbon {\r\n  display: block;\r\n  font-size: 14px;\r\n  font-weight: 600;\r\n  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.10);\r\n  color: #fff;\r\n  text-align: center;\r\n  -webkit-transform: rotate(45deg);\r\n  -moz-transform: rotate(45deg);\r\n  -ms-transform: rotate(45deg);\r\n  -o-transform: rotate(45deg);\r\n  position: relative;\r\n  padding: 7px 0;\r\n  left: -5px;\r\n  top: 15px;\r\n  width: 120px;\r\n  line-height: 20px;\r\n  background-color: #797979;\r\n  -webkit-box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);\r\n  -moz-box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);\r\n  box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);\r\n}\r\n/*-------------------------------\r\n	ribbon on-line viewtopic and user profile style\r\n------------------------------*/\r\n\r\n\r\n /*-------------------------------\r\n	SIGNATURE\r\n ------------------------------*/\r\n\r\n.separator:before {\r\n    background: none repeat scroll 0 0 #CDCDCD;\r\n    content: "";\r\n    display: block;\r\n    height: 1px;\r\n    left: 0;\r\n    margin-top: 10px;\r\n    position: absolute;\r\n    right: 0;\r\n    top: 50%;\r\n}\r\n\r\n.separator i {\r\n    background: none repeat scroll 0 0 #F5F5F5;\r\n    display: inline-block;\r\n    left: 50%;\r\n    margin-left: -25px;\r\n    margin-top: -2px;\r\n    padding: 0 10px;\r\n    position: absolute;\r\n    top: 50%;\r\n	color: #CDCDCD;\r\n}\r\n\r\n.separator {\r\n    display: block;\r\n    height: 20px;\r\n    margin: 12px 0 8px;\r\n    padding: 0;\r\n    position: relative;\r\n	text-align:center;\r\n	padding: 5px;\r\n}\r\n\r\n.signature-pm {\r\n    line-height: 140%;\r\n    overflow: hidden;\r\n    padding-top: 0.2em;\r\n    width: 100%;\r\n}\r\n\r\n\r\n/*-------------------------------\r\n	USER PROFILE AND GALLERY\r\n------------------------------*/\r\n\r\n/* --------------------------------------------------------------\r\n MISC - BUTTONS - ALERTS\r\n-------------------------------------------------------------- */\r\n\r\n.btn {\r\n   font-family: ''roboto condensed'',''Arial'',''Helvetica'',sans-serif;\r\n   font-weight: 700;\r\n   color:#7F7F7F;\r\n}\r\n\r\n/*** remove dotted line feedback. this should not be used - use your own style instead ***/\r\n\r\n.btn-link:hover, .btn-link:focus{\r\n	text-decoration: none;\r\n	color:#8C8C8C;\r\n}\r\n\r\n.btn:focus {\r\n outline: 0;\r\n}\r\n\r\n.bootstrap-select .btn-focus{\r\n    outline: medium none;\r\n}\r\n\r\n.bootstrap-select.btn-group, .bootstrap-select.btn-group[class*="span"] {\r\n    margin-bottom: 0;\r\n}\r\n\r\n.bootstrap-select.btn-group:not(.input-group-btn), .bootstrap-select.btn-group[class*="span"] {\r\n    margin-bottom: 0;\r\n}\r\n\r\n\r\n.btn-success, .btn-danger, .btn-warning, .btn-info, .btn-primary {\r\n	color: #FFFFFF !important;\r\n}\r\n\r\n\r\n/*** adjust the size in post ***/\r\n.btn-post, .btn-group-post > .btn {\r\n    border-radius: 3px;\r\n    font-size: 12px;\r\n    line-height: 1.5;\r\n    padding: 3px 6px;\r\n}\r\n\r\n/*** fix the bootstrap gap in btn group ***/\r\n.btn-group-fix {\r\n    margin-left: -2px !important;\r\n}\r\n\r\n/*** fix the bootstrap space in btn group post ***/\r\n.btn-post-fix {\r\n   margin-left: 5px;\r\n}\r\n\r\n/*** fix the width in post dropdown menu ***/\r\n\r\n.dropdown-menu-post > li > a {\r\n    padding: 3px 5px;\r\n}\r\n\r\n/*** fix the width in post dropdown menu ***/\r\n\r\n\r\n.alert .close {\r\n    line-height: 20px;\r\n    position: relative;\r\n    right: -1px;\r\n    top: -2px;\r\n}\r\n\r\n.close {\r\n    color: #000000;\r\n    float: right;\r\n    font-size: 20px;\r\n    font-weight: bold;\r\n    line-height: 20px;\r\n    opacity: 0.2;\r\n    text-shadow: 0 1px 0 #FFFFFF;\r\n}\r\n\r\n.close-file-upload {\r\n	display: inline-block;\r\n	margin-left: 3px;\r\n	margin-top: 1px;\r\n	position: relative;\r\n	vertical-align: middle;\r\n}\r\n\r\n.awe-remove-circle:before {\r\n    content: "\\f05c";\r\n}\r\n\r\n[class^="awe-"]:before, [class*=" awe-"]:before {\r\n    display: inline-block;\r\n    text-decoration: inherit;\r\n}\r\n\r\n[class^="awe-"], [class*=" awe-"] {\r\n    background-image: none;\r\n    background-position: 0 0;\r\n    background-repeat: repeat;\r\n    display: inline;\r\n    font-family: FontAwesome;\r\n    font-style: normal;\r\n    font-weight: normal;\r\n    height: auto;\r\n    line-height: normal;\r\n    margin-top: 0;\r\n    text-decoration: inherit;\r\n    vertical-align: baseline;\r\n    width: auto;\r\n}\r\n\r\n.alert-info {\r\n    background-color: #169FE6;\r\n}\r\n\r\n.alert-warning {\r\n    background-color: #C09853;\r\n}\r\n\r\n.alert-danger, .alert-error {\r\n    background-color: #D40000;\r\n}\r\n\r\n.alert-danger, .alert-error, .alert-warning, .alert-info {\r\n    color: #FFFFFF;\r\n}\r\n\r\n.alert {\r\n    border: 2px solid #D3D3D3;\r\n	box-shadow: 0 1px 0 rgba(178, 0, 17, 0.05);\r\n	padding: 10px;\r\n}\r\n\r\n.alert-info strong, .alert-warning strong, .alert-error strong {\r\n    color: #FFFFFF;\r\n}\r\n\r\n.alert-info a , .alert-warning a, .alert-error a{\r\n    color: #FFFFFF;\r\n}\r\n\r\n.alert-warning h4 {\r\n    background-color: #C09853;\r\n    color: #FFFFFF;\r\n    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.35);\r\n}\r\n\r\n.label-info, .badge-info {\r\n    background-color: #169FE6;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nWELLS AND WIDGETS\r\n-------------------------------------------------------------- */\r\n\r\n.well-qr {\r\n    border: 1px solid #DBDBDB;\r\n    border-radius: 3px 3px 3px 3px;\r\n    padding: 5px 15px;\r\n}\r\n\r\n.well {\r\n   position:relative;\r\n   -webkit-box-shadow: 0 3px 0 0 #DBDBDB;\r\n   -moz-box-shadow: 0 3px 0 0 #DBDBDB;\r\n   box-shadow: 0 3px 0 0 #DBDBDB;\r\n   border-left: 2px solid #DBDBDB;\r\n   border-right: 2px solid #DBDBDB;\r\n   border-top: 2px solid #DBDBDB;\r\n}\r\n\r\n.progress {\r\n  height: 20px;\r\n  margin-bottom: 20px;\r\n  overflow: hidden;\r\n  background-color: #f7f7f7;\r\n  background-image: -moz-linear-gradient(top, #f5f5f5, #DFDFDF);\r\n  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#DFDFDF));\r\n  background-image: -webkit-linear-gradient(top, #f5f5f5, #DFDFDF);\r\n  background-image: -o-linear-gradient(top, #f5f5f5, #DFDFDF);\r\n  background-image: linear-gradient(to bottom, #f5f5f5, #DFDFDF);\r\n}\r\n\r\n\r\n.widget {\r\n    border-radius: 4px 4px 4px 4px;\r\n    margin-bottom: 20px;\r\n    position: relative;\r\n}\r\n\r\n.widget:before, .widget:after {\r\n    content: "";\r\n    display: table;\r\n}\r\n\r\n.widget:after {\r\n    clear: both;\r\n}\r\n\r\n.widget-header {\r\n    border-bottom: 1px solid #BBBBBB;\r\n    border-radius: 4px 4px 0 0;\r\n	cursor: pointer;\r\n    min-height: 30px;\r\n    padding: 5px 0 4px;\r\n    position: relative;\r\n}\r\n\r\n.widget-header a {\r\n    color: #7F7F7F;\r\n    float: right;\r\n	font-size: 18px;\r\n    line-height: 24px;\r\n    text-align: right;\r\n}\r\n\r\n.widget-header h4{\r\n    font-size: 22px;\r\n    color: #7F7F7F;\r\n    font-style: normal;\r\n    float: left;\r\n    line-height: 24px;\r\n	min-width: 160px;\r\n	width: auto;\r\n    margin: 0;\r\n	border-bottom: medium none;\r\n}\r\n\r\n/* --------------------------------------------------------------\r\nPAGINATION\r\n-------------------------------------------------------------- */\r\n.pagination span.page-sep, .pagination li.page-sep {\r\n    display: none;\r\n}\r\n\r\nli.pagination {\r\n	margin-top: 0;\r\n}\r\n\r\n.pagination span a:hover {\r\n	border-color: #d2d2d2;\r\n	background-color: #d2d2d2;\r\n	color: #FFF;\r\n	text-decoration: none;\r\n}\r\n\r\n/* Pagination in viewforum for multipage topics */\r\nstrong.pagination {\r\n    display: inline-block;\r\n    float: right;\r\n    margin-top: -10px;\r\n	height: 0;\r\n    width: auto;\r\n}\r\n\r\n.pagination span a, li.pagination span a {\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n.pagination span a:hover, li.pagination span a:hover {\r\n	background-color: #d2d2d2;\r\n}\r\n\r\n/*-------------------------------\r\n	TOPIC-FORUM PAGINATION\r\n------------------------------*/\r\ntd strong.pagination > span {\r\n    border: 1px solid rgba(0, 0, 0, 0.1);\r\n    border-radius: 3px 3px 3px 3px;\r\n    display: inline-block;\r\n    margin-top: 4px;\r\n    overflow: hidden;\r\n}\r\n\r\ntd strong.pagination > span a, td strong.pagination > span .page-dots {\r\n    border-left: 1px solid rgba(0, 0, 0, 0.1);\r\n    display: block;\r\n    float: left;\r\n    font-size: 11px;\r\n    font-weight: normal;\r\n    line-height: 18px;\r\n    padding: 0 6px;\r\n}\r\n\r\ntd strong.pagination > span a:first-child, td strong.pagination > span .page-dots:first-child {\r\n    border-left: 0 none;\r\n}\r\n\r\n.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {\r\n    background-color: #F5F5F5;\r\n	border-color: #DDDDDD;\r\n    color: #999999;\r\n}\r\n\r\n.pagination {\r\n    margin-top: 0;\r\n}\r\n\r\n/*-------------------------------\r\n	TOPIC-FORUM PAGINATION\r\n------------------------------*/\r\n\r\n/* --------------------------------------------------------------\r\nPM STUFF\r\n-------------------------------------------------------------- */\r\n\r\n/* PM Message history */\r\n.current {\r\n	color: #000000;\r\n}\r\n\r\n/* PM marking colours */\r\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\r\n	color: #BC2A4D;\r\n}\r\n\r\n.pmlist li.pm_marked_colour, .pm_marked_colour {\r\n	color: #FF6600;\r\n}\r\n\r\n.pmlist li.pm_replied_colour, .pm_replied_colour {\r\n	color: #A9B8C2;\r\n}\r\n\r\n.pmlist li.pm_friend_colour, .pm_friend_colour {\r\n	color: #5D8FBD;\r\n}\r\n\r\n.pmlist li.pm_foe_colour, .pm_foe_colour {\r\n	color: #000000;\r\n}\r\n\r\n/* Avatar gallery */\r\n#gallery label {\r\n	position: relative;\r\n	float: left;\r\n	margin: 10px;\r\n	padding: 5px;\r\n	width: auto;\r\n	background: #FFFFFF;\r\n	border: 1px solid #CCC;\r\n	text-align: center;\r\n}\r\n\r\n#gallery label:hover {\r\n	background-color: #EEEEEE;\r\n	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.2);\r\n	-moz-box-shadow: 0 1px 1px rgba(0,0,0,0.2);\r\n	box-shadow: 0 1px 1px rgba(0,0,0,0.2);\r\n}\r\n\r\n/* Avatar gallery */\r\n#gallery label {\r\n	background-color: #FFFFFF;\r\n	border-color: #CCC;\r\n}\r\n\r\n/* PM NOTIFIER */\r\n\r\n.flyover {\r\n   left: 150%;\r\n   overflow: hidden;\r\n   position: fixed;\r\n   width: 50%;\r\n   opacity: 0.9;\r\n   z-index: 1050;\r\n   transition: left 0.6s ease-out 0s;\r\n}\r\n \r\n.flyover-centered {\r\n   top: 50%;\r\n   transform: translate(-50%, -50%);\r\n}\r\n\r\n.flyover-bottom {\r\n    bottom: 10px;\r\n}\r\n\r\n.flyover.in {\r\n   left: 50%;\r\n}\r\n\r\n.jumbotron {\r\n    border-radius: 6px;\r\n}\r\n.jumbotron {\r\n    background-color: #EEEEEE;\r\n    color: inherit;\r\n    font-size: 21px;\r\n    line-height: 2.14286;\r\n    margin-bottom: 30px;\r\n    padding: 30px;\r\n}\r\n\r\n.pmboots {\r\n   background: none repeat scroll 0 0 rgba(218, 218, 218, 0.8);\r\n    border: 2px solid rgba(255, 255, 255, 0.75);\r\n    border-radius: 4px;\r\n    box-shadow: 0 0 4px rgba(50, 50, 50, 0.5);\r\n    color: #888888;\r\n    margin: 0 12px 70px 0;\r\n    padding: 10px;\r\n    text-shadow: 0 1px 0 #FFFFFF;\r\n    width: 255px;\r\n}\r\n\r\n.pmboots .close {\r\n    line-height: 20px;\r\n    position: relative;\r\n    right: -4px;\r\n    top: -1px;\r\n}\r\n\r\n.notifier-box {\r\n    bottom: 0;\r\n    position: fixed;\r\n    right: 10px;\r\n    z-index: 1000;\r\n	-webkit-animation: fadein 2s; /* Safari and Chrome */\r\n    -moz-animation: fadein 2s; /* Firefox */\r\n    -ms-animation: fadein 2s; /* Internet Explorer */\r\n    -o-animation: fadein 2s; /* Opera */\r\n     animation: fadein 2s;\r\n}\r\n\r\n.pmtime {\r\n    margin-top: 10px;\r\n}\r\n\r\n.pmboots > h4 {\r\n  color:#727272;\r\n}\r\n\r\n.pmboots > a {\r\n    color: #585858;\r\n    font-size: 11px;\r\n}\r\n\r\n@keyframes fadein {\r\n    from { opacity: 0; }\r\n    to   { opacity: 1; }\r\n}\r\n\r\n/* Firefox */\r\n@-moz-keyframes fadein {\r\n    from { opacity: 0; }\r\n    to   { opacity: 1; }\r\n}\r\n\r\n/* Safari and Chrome */\r\n@-webkit-keyframes fadein {\r\n    from { opacity: 0; }\r\n    to   { opacity: 1; }\r\n}\r\n/* PM NOTIFIER */\r\n/* --------------------------------------------------------------\r\nPM STUFF\r\n-------------------------------------------------------------- */\r\n\r\n/* --------------------------------------------------------------\r\nBACK TO TOP\r\n-------------------------------------------------------------- */\r\n/* Back to Top Style */\r\n.topstyle i {\r\n    background-color: #8C8C8C;\r\n    border: 3px solid #FFFFFF;\r\n    border-radius: 50%;\r\n    color: #FFFFFF;\r\n    display: block;\r\n    font-size: 30px;\r\n    height: 45px;\r\n	line-height: 35px;\r\n    padding: 0;\r\n    text-align: center;\r\n    width: 45px;\r\n}\r\n\r\n.topstyle {\r\n    bottom: 10px;\r\n    cursor: pointer;\r\n    position: fixed;\r\n	outline: 0 none!important;\r\n    right: 10px;\r\n	z-index: 9999999;\r\n	text-decoration: none!important;;\r\n}\r\n/* Back to Top Style */\r\n\r\n/* --------------------------------------------------------------\r\n400 - 500 PAGES\r\n-------------------------------------------------------------- */\r\n\r\n/* Error pages */\r\n.big-title h1 {\r\n    color: #7F7F7F;\r\n    cursor: default;\r\n    display: block;\r\n    font-size: 250px;\r\n	text-align: center;\r\n    text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.5);\r\n}\r\n\r\n.big-title h1:before {\r\n    color: #8C8C8C;\r\n    content: "{";\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 250px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    line-height: 16px;\r\n}\r\n\r\n.big-title h1:after {\r\n    color: #169FE6;\r\n    content: "}";\r\n    font-family: ''BebasNeueRegular'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 250px;\r\n    font-style: normal;\r\n    font-weight: 400;\r\n    line-height: 16px;\r\n}\r\n\r\n.well-schema {\r\n    background-image:url("{T_THEME_PATH}/images/schema.png");\r\n}\r\n\r\n.big-title h2 {\r\n    color: #7F7F7F;\r\n    font-size: 27px;\r\n    margin-bottom: 20px;\r\n    margin-left: 20px;\r\n	text-align: center;\r\n}\r\n\r\n.achievement {\r\n    margin-bottom: 50px;\r\n    padding-top: 21px;\r\n    text-align: center;\r\n}\r\n\r\n.achievement i {\r\n    background: none repeat scroll 0 0 #F0F0F0;\r\n    border: 5px solid #FFFFFF;\r\n    border-radius: 500px 500px 500px 500px;\r\n    color: #F07073;\r\n    font-size: 50px;\r\n    padding: 12px 15px;\r\n	text-shadow: 1px 3px 0px rgba(0, 0, 0, 0.2);\r\n}\r\n/* Error pages */\r\n\r\n/*-------------------------------\r\n	MCP BAN LIST FIX\r\n------------------------------*/\r\n \r\n.widget-ban.list ul li .count {\r\n    color: #E04545;\r\n}\r\n\r\n.widget-ban.list ul li {\r\n    line-height: 30px;\r\n}\r\n/*-------------------------------\r\n	MCP BAN LIST FIX\r\n------------------------------*/\r\n\r\n/*----------------------------\r\n	Disable Board\r\n-----------------------------*/\r\n#container {\r\n    color: #555555;\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 50px;\r\n    margin: 0 auto;\r\n    min-height: 90px;\r\n    text-align: center;\r\n    text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5);\r\n    width: 100%;\r\n}\r\n\r\n#container:before{\r\n	content: "\\f120";\r\n	font-family: FontAwesome;\r\n	font-size: 60px;\r\n	margin-right: 8px;\r\n	opacity: 0.25;\r\n	position: relative;\r\n	text-shadow: 1px 1px 0 white;\r\n}\r\n\r\n#userText{\r\n	background:none;\r\n	border:none;\r\n	border-bottom:1px solid #aaa;\r\n	\r\n	color: #777777;\r\n    display: block;\r\n    font-family: ''Roboto Condensed'',''Arial'',''Helvetica'',sans-serif;\r\n    font-size: 26px;\r\n    margin: 0 auto 0px;\r\n    padding: 10px;\r\n    text-align: center;\r\n    width: 300px;\r\n    outline: none;\r\n}\r\n/*----------------------------\r\n	Disable Board\r\n-----------------------------*/\r\n/*****************************************************************\r\n * Custom CSS Stylesheet. You can add any custom CSS selectors here after the comment line. \r\n * They will be given the highest priority on any elements on the forum\r\n * Personilize your forum color scheme in one click here: www.sitesplat.com/phpBB3/ \r\n * **************************************************************\r\n *\r\n * BBOOTS(3.0.2) @SiteSplat.com - Custom CSS STYLESHEET - \r\n * \r\n * **************************************************************\r\n *****************************************************************/\r\n \r\n  /* ===[ CSS HOOK TOP ]=== */\r\n \r\n \r\n /* ===[ CSS HOOK BOOTTOM ]=== */\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE `phpbb_topics` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(1, 2, 0, 0, 1, 0, 'Welcome to phpBB3', 2, 1481348609, 0, 1, 0, 0, 0, 0, 1, 'apcmegaphone', 'AA0000', 1, 2, 'apcmegaphone', 'AA0000', 'Welcome to phpBB3', 1481348609, 1481348992, 0, 0, 0, '', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE `phpbb_topics_posted` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE `phpbb_topics_track` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE `phpbb_topics_watch` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE `phpbb_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '', 0, '', 1481348609, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6a02fc1ba360cb17', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0yo\ni1cjyo000000\nzik0zjzhb2tc', 0, '::1', 1481348609, 'apcmegaphone', 'apcmegaphone', '$H$9mFBl3mYlQ0drEyB2lN5Zstm79rgpu/', 0, 0, 'hannahreyes54@gmail.com', 44160343023, '', 1481351979, 0, 0, 'adm/index.php?i=mods&mode=frontend', '', 0, 0, 0, 0, 0, 0, 1, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4305a9be2480b453', 1, 0, 0),
(3, 2, 6, '', 0, '', 1481348726, 'AdsBot [Google]', 'adsbot [google]', '', 1481348726, 0, '', 0, '', 0, 1481348726, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b89bae64a2845454', 0, 0, 0),
(4, 2, 6, '', 0, '', 1481348727, 'Alexa [Bot]', 'alexa [bot]', '', 1481348727, 0, '', 0, '', 0, 1481348727, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '425e2ce881c2cb3f', 0, 0, 0),
(5, 2, 6, '', 0, '', 1481348727, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1481348727, 0, '', 0, '', 0, 1481348727, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ca556ba9ab619061', 0, 0, 0),
(6, 2, 6, '', 0, '', 1481348727, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1481348727, 0, '', 0, '', 0, 1481348727, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd98b05803eebefbb', 0, 0, 0),
(7, 2, 6, '', 0, '', 1481348727, 'Baidu [Spider]', 'baidu [spider]', '', 1481348727, 0, '', 0, '', 0, 1481348727, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c06808f9bd4e34ac', 0, 0, 0),
(8, 2, 6, '', 0, '', 1481348728, 'Bing [Bot]', 'bing [bot]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '427ef19d35999a84', 0, 0, 0),
(9, 2, 6, '', 0, '', 1481348728, 'Exabot [Bot]', 'exabot [bot]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1954c8729dd88784', 0, 0, 0),
(10, 2, 6, '', 0, '', 1481348728, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ca63400f499da991', 0, 0, 0),
(11, 2, 6, '', 0, '', 1481348728, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '48c82d980fdd6677', 0, 0, 0),
(12, 2, 6, '', 0, '', 1481348728, 'Francis [Bot]', 'francis [bot]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e36b2c79b5e606e3', 0, 0, 0),
(13, 2, 6, '', 0, '', 1481348728, 'Gigabot [Bot]', 'gigabot [bot]', '', 1481348728, 0, '', 0, '', 0, 1481348728, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '580764acaec55c00', 0, 0, 0),
(14, 2, 6, '', 0, '', 1481348729, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1481348729, 0, '', 0, '', 0, 1481348729, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'de107f46999422fb', 0, 0, 0),
(15, 2, 6, '', 0, '', 1481348729, 'Google Desktop', 'google desktop', '', 1481348729, 0, '', 0, '', 0, 1481348729, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f43e9d28a489f281', 0, 0, 0),
(16, 2, 6, '', 0, '', 1481348729, 'Google Feedfetcher', 'google feedfetcher', '', 1481348729, 0, '', 0, '', 0, 1481348729, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1edbc11248c7dbad', 0, 0, 0),
(17, 2, 6, '', 0, '', 1481348729, 'Google [Bot]', 'google [bot]', '', 1481348729, 0, '', 0, '', 0, 1481348729, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02ead75f41d584ea', 0, 0, 0),
(18, 2, 6, '', 0, '', 1481348729, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1481348729, 0, '', 0, '', 0, 1481348729, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '79183b8d610b7361', 0, 0, 0),
(19, 2, 6, '', 0, '', 1481348730, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c7f012f82c9d002d', 0, 0, 0),
(20, 2, 6, '', 0, '', 1481348730, 'IBM Research [Bot]', 'ibm research [bot]', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ddab1aebd3cf68ee', 0, 0, 0),
(21, 2, 6, '', 0, '', 1481348730, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '69ba3f5449aa8b4f', 0, 0, 0),
(22, 2, 6, '', 0, '', 1481348730, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1ed1df8282781eb6', 0, 0, 0),
(23, 2, 6, '', 0, '', 1481348730, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e429455699acfd67', 0, 0, 0),
(24, 2, 6, '', 0, '', 1481348730, 'Metager [Bot]', 'metager [bot]', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3529e73cc526f6d4', 0, 0, 0),
(25, 2, 6, '', 0, '', 1481348730, 'MSN NewsBlogs', 'msn newsblogs', '', 1481348730, 0, '', 0, '', 0, 1481348730, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fcee21e948d6127a', 0, 0, 0),
(26, 2, 6, '', 0, '', 1481348731, 'MSN [Bot]', 'msn [bot]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bcd2ef2190b01ccf', 0, 0, 0),
(27, 2, 6, '', 0, '', 1481348731, 'MSNbot Media', 'msnbot media', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bb8b0d6c6aefe0dd', 0, 0, 0),
(28, 2, 6, '', 0, '', 1481348731, 'Nutch [Bot]', 'nutch [bot]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1857c71315680c97', 0, 0, 0),
(29, 2, 6, '', 0, '', 1481348731, 'Online link [Validator]', 'online link [validator]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '54cd63807db2b13a', 0, 0, 0),
(30, 2, 6, '', 0, '', 1481348731, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '39b218a4166c0a70', 0, 0, 0),
(31, 2, 6, '', 0, '', 1481348731, 'Sensis [Crawler]', 'sensis [crawler]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16e58055e9a06c63', 0, 0, 0),
(32, 2, 6, '', 0, '', 1481348731, 'SEO Crawler', 'seo crawler', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b316effd0ba79022', 0, 0, 0),
(33, 2, 6, '', 0, '', 1481348731, 'Seoma [Crawler]', 'seoma [crawler]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '79ebdfa50e430549', 0, 0, 0),
(34, 2, 6, '', 0, '', 1481348731, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1481348731, 0, '', 0, '', 0, 1481348731, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '264e3d04187d779c', 0, 0, 0),
(35, 2, 6, '', 0, '', 1481348732, 'Snappy [Bot]', 'snappy [bot]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f1687b6c723e1d36', 0, 0, 0),
(36, 2, 6, '', 0, '', 1481348732, 'Steeler [Crawler]', 'steeler [crawler]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '97ef39fb2d5a6d1f', 0, 0, 0),
(37, 2, 6, '', 0, '', 1481348732, 'Telekom [Bot]', 'telekom [bot]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b0497cff8fdfd779', 0, 0, 0),
(38, 2, 6, '', 0, '', 1481348732, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1b669792a2279463', 0, 0, 0),
(39, 2, 6, '', 0, '', 1481348732, 'Voyager [Bot]', 'voyager [bot]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b81a8be36f697ad6', 0, 0, 0),
(40, 2, 6, '', 0, '', 1481348732, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c3fbf973533e7757', 0, 0, 0),
(41, 2, 6, '', 0, '', 1481348732, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'facf1fb65e95c13f', 0, 0, 0),
(42, 2, 6, '', 0, '', 1481348732, 'W3C [Validator]', 'w3c [validator]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05305eb42c309056', 0, 0, 0),
(43, 2, 6, '', 0, '', 1481348732, 'YaCy [Bot]', 'yacy [bot]', '', 1481348732, 0, '', 0, '', 0, 1481348732, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6aeb82d0c2a9a37f', 0, 0, 0),
(44, 2, 6, '', 0, '', 1481348733, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1481348733, 0, '', 0, '', 0, 1481348733, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2d821f021be13761', 0, 0, 0),
(45, 2, 6, '', 0, '', 1481348733, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1481348733, 0, '', 0, '', 0, 1481348733, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'eb6cf97767f84157', 0, 0, 0),
(46, 2, 6, '', 0, '', 1481348733, 'Yahoo [Bot]', 'yahoo [bot]', '', 1481348733, 0, '', 0, '', 0, 1481348733, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aae8c990a9f663ab', 0, 0, 0),
(47, 2, 6, '', 0, '', 1481348733, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1481348733, 0, '', 0, '', 0, 1481348733, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fc3a2d12cde7377c', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `log_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE `phpbb_words` (
  `word_id` mediumint(8) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE `phpbb_zebra` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phpbb_acl_groups`
--
ALTER TABLE `phpbb_acl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Indexes for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Indexes for table `phpbb_acl_roles_data`
--
ALTER TABLE `phpbb_acl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Indexes for table `phpbb_acl_users`
--
ALTER TABLE `phpbb_acl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Indexes for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Indexes for table `phpbb_bbcodes`
--
ALTER TABLE `phpbb_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_bookmarks`
--
ALTER TABLE `phpbb_bookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indexes for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Indexes for table `phpbb_config`
--
ALTER TABLE `phpbb_config`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `phpbb_confirm`
--
ALTER TABLE `phpbb_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Indexes for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indexes for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Indexes for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Indexes for table `phpbb_forums_access`
--
ALTER TABLE `phpbb_forums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Indexes for table `phpbb_forums_track`
--
ALTER TABLE `phpbb_forums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Indexes for table `phpbb_forums_watch`
--
ALTER TABLE `phpbb_forums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Indexes for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Indexes for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Indexes for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_login_attempts`
--
ALTER TABLE `phpbb_login_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_moderator_cache`
--
ALTER TABLE `phpbb_moderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `phpbb_mods`
--
ALTER TABLE `phpbb_mods`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Indexes for table `phpbb_poll_options`
--
ALTER TABLE `phpbb_poll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbb_poll_votes`
--
ALTER TABLE `phpbb_poll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Indexes for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `post_approved` (`post_approved`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`);

--
-- Indexes for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Indexes for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_to`
--
ALTER TABLE `phpbb_privmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Indexes for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Indexes for table `phpbb_profile_fields_data`
--
ALTER TABLE `phpbb_profile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `phpbb_profile_fields_lang`
--
ALTER TABLE `phpbb_profile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Indexes for table `phpbb_profile_lang`
--
ALTER TABLE `phpbb_profile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Indexes for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indexes for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `phpbb_search_results`
--
ALTER TABLE `phpbb_search_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Indexes for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Indexes for table `phpbb_search_wordmatch`
--
ALTER TABLE `phpbb_search_wordmatch`
  ADD UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `phpbb_sessions`
--
ALTER TABLE `phpbb_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Indexes for table `phpbb_sessions_keys`
--
ALTER TABLE `phpbb_sessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indexes for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `imageset_id` (`imageset_id`);

--
-- Indexes for table `phpbb_styles_imageset`
--
ALTER TABLE `phpbb_styles_imageset`
  ADD PRIMARY KEY (`imageset_id`),
  ADD UNIQUE KEY `imgset_nm` (`imageset_name`);

--
-- Indexes for table `phpbb_styles_imageset_data`
--
ALTER TABLE `phpbb_styles_imageset_data`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `i_d` (`imageset_id`);

--
-- Indexes for table `phpbb_styles_template`
--
ALTER TABLE `phpbb_styles_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `tmplte_nm` (`template_name`);

--
-- Indexes for table `phpbb_styles_template_data`
--
ALTER TABLE `phpbb_styles_template_data`
  ADD KEY `tid` (`template_id`),
  ADD KEY `tfn` (`template_filename`);

--
-- Indexes for table `phpbb_styles_theme`
--
ALTER TABLE `phpbb_styles_theme`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `theme_name` (`theme_name`);

--
-- Indexes for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `topic_approved` (`topic_approved`),
  ADD KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`);

--
-- Indexes for table `phpbb_topics_posted`
--
ALTER TABLE `phpbb_topics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `phpbb_topics_track`
--
ALTER TABLE `phpbb_topics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `phpbb_topics_watch`
--
ALTER TABLE `phpbb_topics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_email_hash` (`user_email_hash`),
  ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `phpbb_user_group`
--
ALTER TABLE `phpbb_user_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Indexes for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indexes for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `phpbb_zebra`
--
ALTER TABLE `phpbb_zebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  MODIFY `attach_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  MODIFY `ban_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  MODIFY `bot_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  MODIFY `draft_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  MODIFY `log_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `phpbb_mods`
--
ALTER TABLE `phpbb_mods`
  MODIFY `mod_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  MODIFY `post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  MODIFY `msg_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  MODIFY `report_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  MODIFY `word_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_styles_imageset`
--
ALTER TABLE `phpbb_styles_imageset`
  MODIFY `imageset_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_styles_imageset_data`
--
ALTER TABLE `phpbb_styles_imageset_data`
  MODIFY `image_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `phpbb_styles_template`
--
ALTER TABLE `phpbb_styles_template`
  MODIFY `template_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_styles_theme`
--
ALTER TABLE `phpbb_styles_theme`
  MODIFY `theme_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  MODIFY `topic_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  MODIFY `word_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
