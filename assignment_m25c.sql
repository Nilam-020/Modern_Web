-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_m25c`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact form', 7, 'add_contactform'),
(26, 'Can change contact form', 7, 'change_contactform'),
(27, 'Can delete contact form', 7, 'delete_contactform'),
(28, 'Can view contact form', 7, 'view_contactform'),
(29, 'Can add comment form', 8, 'add_commentform'),
(30, 'Can change comment form', 8, 'change_commentform'),
(31, 'Can delete comment form', 8, 'delete_commentform'),
(32, 'Can view comment form', 8, 'view_commentform'),
(33, 'Can add newsletter', 9, 'add_newsletter'),
(34, 'Can change newsletter', 9, 'change_newsletter'),
(35, 'Can delete newsletter', 9, 'delete_newsletter'),
(36, 'Can view newsletter', 9, 'view_newsletter'),
(37, 'Can add portfolio', 10, 'add_portfolio'),
(38, 'Can change portfolio', 10, 'change_portfolio'),
(39, 'Can delete portfolio', 10, 'delete_portfolio'),
(40, 'Can view portfolio', 10, 'view_portfolio'),
(41, 'Can add about', 11, 'add_about'),
(42, 'Can change about', 11, 'change_about'),
(43, 'Can delete about', 11, 'delete_about'),
(44, 'Can view about', 11, 'view_about'),
(45, 'Can add blog', 12, 'add_blog'),
(46, 'Can change blog', 12, 'change_blog'),
(47, 'Can delete blog', 12, 'delete_blog'),
(48, 'Can view blog', 12, 'view_blog'),
(49, 'Can add our team', 13, 'add_ourteam'),
(50, 'Can change our team', 13, 'change_ourteam'),
(51, 'Can delete our team', 13, 'delete_ourteam'),
(52, 'Can view our team', 13, 'view_ourteam'),
(53, 'Can add services', 14, 'add_services'),
(54, 'Can change services', 14, 'change_services'),
(55, 'Can delete services', 14, 'delete_services'),
(56, 'Can view services', 14, 'view_services'),
(57, 'Can add testimonial', 15, 'add_testimonial'),
(58, 'Can change testimonial', 15, 'change_testimonial'),
(59, 'Can delete testimonial', 15, 'delete_testimonial'),
(60, 'Can view testimonial', 15, 'view_testimonial'),
(61, 'Can add tools', 16, 'add_tools'),
(62, 'Can change tools', 16, 'change_tools'),
(63, 'Can delete tools', 16, 'delete_tools'),
(64, 'Can view tools', 16, 'view_tools'),
(65, 'Can add blog_details', 17, 'add_blog_details'),
(66, 'Can change blog_details', 17, 'change_blog_details'),
(67, 'Can delete blog_details', 17, 'delete_blog_details'),
(68, 'Can view blog_details', 17, 'view_blog_details'),
(69, 'Can add blog_detailsdesc', 17, 'add_blog_detailsdesc'),
(70, 'Can change blog_detailsdesc', 17, 'change_blog_detailsdesc'),
(71, 'Can delete blog_detailsdesc', 17, 'delete_blog_detailsdesc'),
(72, 'Can view blog_detailsdesc', 17, 'view_blog_detailsdesc'),
(73, 'Can add blog_desc', 12, 'add_blog_desc'),
(74, 'Can change blog_desc', 12, 'change_blog_desc'),
(75, 'Can delete blog_desc', 12, 'delete_blog_desc'),
(76, 'Can view blog_desc', 12, 'view_blog_desc'),
(77, 'Can add ads', 18, 'add_ads'),
(78, 'Can change ads', 18, 'change_ads'),
(79, 'Can delete ads', 18, 'delete_ads'),
(80, 'Can view ads', 18, 'view_ads'),
(81, 'Can add category_detail', 19, 'add_category_detail'),
(82, 'Can change category_detail', 19, 'change_category_detail'),
(83, 'Can delete category_detail', 19, 'delete_category_detail'),
(84, 'Can view category_detail', 19, 'view_category_detail'),
(85, 'Can add post_category', 20, 'add_post_category'),
(86, 'Can change post_category', 20, 'change_post_category'),
(87, 'Can delete post_category', 20, 'delete_post_category'),
(88, 'Can view post_category', 20, 'view_post_category'),
(89, 'Can add sidebar_author', 21, 'add_sidebar_author'),
(90, 'Can change sidebar_author', 21, 'change_sidebar_author'),
(91, 'Can delete sidebar_author', 21, 'delete_sidebar_author'),
(92, 'Can view sidebar_author', 21, 'view_sidebar_author');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$zdemaiW8vXjh$k0eGenE0dGsXvkmh7mS7/fCnzXt4ww6FKbDvp99/MN8=', '2020-02-16 05:59:51.170645', 1, 'webproject', '', '', 'alyohinadhikari@gmail.com', 1, 1, '2020-01-30 15:53:10.539081'),
(2, 'pbkdf2_sha256$180000$w1M7gKObDLCg$kJJ0fYphX2IG3oaTDzfIWXTSCgjsSKbkAz3yEHJjLkM=', NULL, 0, 'aaa', '', '', '', 0, 1, '2020-02-11 04:47:56.492930'),
(3, 'pbkdf2_sha256$180000$ZlxD44LAO3lA$0VcXAMWHN2d3yTp8hoa90YAnD0ZaquwL1uizN66dh7Q=', NULL, 0, 'sakriya12', 'Sakriya', 'Khadka', 'sakriya@gmail.com', 0, 1, '2020-02-11 06:18:33.381587'),
(4, 'pbkdf2_sha256$180000$sThJwCsFexDh$JcML9Q5Zw3KK1ZViwH3gqji/sZEA22oygT30iKwVdQE=', '2020-02-12 15:05:29.295034', 0, 'ashwansh', 'Ashwan', 'Shrestha', 'ashwan@gmail.com', 0, 1, '2020-02-11 06:19:43.341330'),
(5, 'pbkdf2_sha256$180000$OzyqFAiChzDB$KfCVcYTYhGnBd2hb+/oVM7ndwF706hqce13tk6YKiW8=', '2020-02-12 15:05:15.537569', 0, 'Ankit_Dev', 'Ankit', 'adhikari', 'adhikarinilam02@gmail.com', 0, 1, '2020-02-11 06:21:30.408526'),
(6, 'pbkdf2_sha256$180000$OyRMHJ1QasU1$/2TVqnDrUQM0LzEEd14uI/1uGDBONN9W5rM/iM44Zkg=', '2020-02-16 06:06:47.915664', 0, 'joshexample', 'josh', 'example', 'example1@gmail.com', 0, 1, '2020-02-16 06:06:33.984428'),
(7, 'pbkdf2_sha256$180000$Vr4DsaQtjoyf$oH4gDALQ6vyprKMglJg11qlTW9807veivY+7EBop5kw=', '2020-02-16 06:20:12.634693', 0, 'ankit123', 'Ankit', 'Adhhikai', 'exampleankit@gmail.com', 0, 1, '2020-02-16 06:15:51.168653');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-01 15:05:35.361672', '1', 'Portfolio object (1)', 1, '[{\"added\": {}}]', 10, 1),
(2, '2020-02-01 15:11:03.284696', '2', 'Portfolio object (2)', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-02-01 15:11:22.728896', '3', 'Portfolio object (3)', 1, '[{\"added\": {}}]', 10, 1),
(4, '2020-02-01 15:11:37.222746', '4', 'Portfolio object (4)', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-02-01 15:12:02.124482', '5', 'Portfolio object (5)', 1, '[{\"added\": {}}]', 10, 1),
(6, '2020-02-01 15:12:22.344069', '6', 'Portfolio object (6)', 1, '[{\"added\": {}}]', 10, 1),
(7, '2020-02-02 04:04:06.566145', '1', 'About object (1)', 1, '[{\"added\": {}}]', 11, 1),
(8, '2020-02-05 11:56:58.319802', '1', 'testimonial object (1)', 1, '[{\"added\": {}}]', 15, 1),
(9, '2020-02-05 11:59:11.876224', '2', 'testimonial object (2)', 1, '[{\"added\": {}}]', 15, 1),
(10, '2020-02-05 12:01:58.845538', '3', 'testimonial object (3)', 1, '[{\"added\": {}}]', 15, 1),
(11, '2020-02-05 12:02:37.808344', '4', 'testimonial object (4)', 1, '[{\"added\": {}}]', 15, 1),
(12, '2020-02-05 12:04:04.213602', '5', 'testimonial object (5)', 1, '[{\"added\": {}}]', 15, 1),
(13, '2020-02-05 12:11:31.991126', '4', 'testimonial object (4)', 3, '', 15, 1),
(14, '2020-02-05 12:11:54.912933', '6', 'testimonial object (6)', 1, '[{\"added\": {}}]', 15, 1),
(15, '2020-02-05 12:13:44.632080', '6', 'testimonial object (6)', 3, '', 15, 1),
(16, '2020-02-05 12:14:07.319692', '7', 'testimonial object (7)', 1, '[{\"added\": {}}]', 15, 1),
(17, '2020-02-05 13:54:12.691993', '1', 'OurTeam object (1)', 1, '[{\"added\": {}}]', 13, 1),
(18, '2020-02-05 13:57:38.613430', '2', 'OurTeam object (2)', 1, '[{\"added\": {}}]', 13, 1),
(19, '2020-02-05 13:59:02.375029', '3', 'OurTeam object (3)', 1, '[{\"added\": {}}]', 13, 1),
(20, '2020-02-05 14:27:59.825254', '1', 'Tools object (1)', 1, '[{\"added\": {}}]', 16, 1),
(21, '2020-02-05 14:28:22.060778', '2', 'Tools object (2)', 1, '[{\"added\": {}}]', 16, 1),
(22, '2020-02-05 14:28:38.459630', '3', 'Tools object (3)', 1, '[{\"added\": {}}]', 16, 1),
(23, '2020-02-05 14:28:48.567169', '4', 'Tools object (4)', 1, '[{\"added\": {}}]', 16, 1),
(24, '2020-02-05 14:29:13.600950', '5', 'Tools object (5)', 1, '[{\"added\": {}}]', 16, 1),
(25, '2020-02-05 14:29:27.970691', '6', 'Tools object (6)', 1, '[{\"added\": {}}]', 16, 1),
(26, '2020-02-05 14:42:47.270645', '1', 'Services object (1)', 1, '[{\"added\": {}}]', 14, 1),
(27, '2020-02-05 14:43:12.216897', '2', 'Services object (2)', 1, '[{\"added\": {}}]', 14, 1),
(28, '2020-02-05 14:43:39.227962', '3', 'Services object (3)', 1, '[{\"added\": {}}]', 14, 1),
(29, '2020-02-05 14:43:56.269509', '4', 'Services object (4)', 1, '[{\"added\": {}}]', 14, 1),
(30, '2020-02-05 14:44:18.510180', '5', 'Services object (5)', 1, '[{\"added\": {}}]', 14, 1),
(31, '2020-02-05 14:44:48.437324', '6', 'Services object (6)', 1, '[{\"added\": {}}]', 14, 1),
(32, '2020-02-05 14:45:04.219581', '2', 'Services object (2)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 14, 1),
(33, '2020-02-07 04:24:11.511512', '1', 'sidebar_author object (1)', 1, '[{\"added\": {}}]', 21, 1),
(34, '2020-02-07 04:26:17.664331', '1', 'post_category object (1)', 1, '[{\"added\": {}}]', 20, 1),
(35, '2020-02-07 04:28:33.499184', '1', 'category_detail object (1)', 1, '[{\"added\": {}}]', 19, 1),
(36, '2020-02-07 04:28:59.721731', '2', 'category_detail object (2)', 1, '[{\"added\": {}}]', 19, 1),
(37, '2020-02-07 04:29:20.110869', '3', 'category_detail object (3)', 1, '[{\"added\": {}}]', 19, 1),
(38, '2020-02-11 04:47:56.846984', '2', 'aaa', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'server', 'about'),
(18, 'server', 'ads'),
(12, 'server', 'blog_desc'),
(17, 'server', 'blog_detailsdesc'),
(19, 'server', 'category_detail'),
(8, 'server', 'commentform'),
(7, 'server', 'contactform'),
(9, 'server', 'newsletter'),
(13, 'server', 'ourteam'),
(10, 'server', 'portfolio'),
(20, 'server', 'post_category'),
(14, 'server', 'services'),
(21, 'server', 'sidebar_author'),
(15, 'server', 'testimonial'),
(16, 'server', 'tools'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-30 15:51:26.925222'),
(2, 'auth', '0001_initial', '2020-01-30 15:51:27.114782'),
(3, 'admin', '0001_initial', '2020-01-30 15:51:27.904090'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-30 15:51:28.052954'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-30 15:51:28.080877'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-30 15:51:28.155678'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-30 15:51:28.238424'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-30 15:51:28.264356'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-30 15:51:28.275326'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-30 15:51:28.337190'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-30 15:51:28.347134'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-30 15:51:28.368078'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-30 15:51:28.405012'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-30 15:51:28.424928'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-30 15:51:28.449893'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-30 15:51:28.460834'),
(17, 'sessions', '0001_initial', '2020-01-30 15:51:28.493742'),
(18, 'server', '0001_initial', '2020-01-30 15:59:20.240519'),
(19, 'server', '0002_commentform_newsletter', '2020-01-31 02:29:29.462554'),
(20, 'server', '0003_portfolio', '2020-02-01 14:34:22.135658'),
(21, 'server', '0004_auto_20200201_2027', '2020-02-01 14:42:55.945757'),
(22, 'server', '0005_auto_20200201_2048', '2020-02-01 15:03:58.974134'),
(23, 'server', '0006_auto_20200202_0650', '2020-02-02 02:40:26.839311'),
(24, 'server', '0007_auto_20200202_0825', '2020-02-02 02:40:26.888507'),
(25, 'server', '0008_about', '2020-02-02 03:48:25.654454'),
(26, 'server', '0009_about_about_parabody', '2020-02-02 04:02:20.398759'),
(27, 'server', '0010_blog_ourteam_services_testimonial_tools', '2020-02-05 07:45:48.468558'),
(28, 'server', '0011_blog_details', '2020-02-06 05:24:41.195249'),
(29, 'server', '0012_auto_20200206_1217', '2020-02-06 06:32:38.159267'),
(30, 'server', '0013_blog_detailsdesc_topic', '2020-02-06 06:44:28.603764'),
(31, 'server', '0014_auto_20200206_1635', '2020-02-06 10:50:21.802100'),
(32, 'server', '0015_remove_blog_view', '2020-02-06 10:51:40.715033'),
(33, 'server', '0016_auto_20200206_1650', '2020-02-06 11:05:23.481149'),
(34, 'server', '0017_ads_category_detail_post_category_sidebar_author', '2020-02-06 13:27:59.018456'),
(35, 'server', '0018_blog_desc_user', '2020-02-11 05:09:54.174903');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7jtnp046jg40beezu1bgpjzgtrzn4yxn', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-13 16:03:48.079780'),
('7z2fkfobj1mw5e8bm8r8uv2l39a5oxau', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-13 15:55:23.498456'),
('94f2n40r5aucncm4vcxw55kbcpzxy34t', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-23 12:07:09.227645'),
('9rrezghmv74w9aphp9r604iu4e0q4umb', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-19 11:53:50.212966'),
('9zmsvwpgzk07amdcqv7bngnt28n4h4d0', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-15 14:43:31.781044'),
('aw5dxy00023r5bvnqexevb2bbp3mpnx4', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-26 11:25:39.501681'),
('cqbi9o3ktl99mhhvpzfhzd07hqatt1wd', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-25 01:55:11.141794'),
('d3xs4kcaam9ypb8m0l0kudryd3gyxytf', 'MTg2N2Q3YWQzZWU4N2UxNjE1M2NkMDM4ZmU5ZmQyNGVkNjliOGEzNjp7fQ==', '2020-02-20 04:54:40.977458'),
('e0zqkdqj0lzhmyj9x6xgnmjykixuiuns', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-14 02:44:42.176095'),
('frehie4mgnio3sxeayg08cvormb9pqt9', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-26 08:05:32.250683'),
('hoi8majmn3wnz4qx8501s79l8ml0ge6a', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-19 05:53:11.232429'),
('nrtwjyurjr2x6oyz29ruxty9xrtzgzis', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-20 11:12:19.058058'),
('nzvrbph548bj4zqakppnffe7juq5omjn', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-20 06:35:11.339535'),
('tweqp5wpbqwt4j6cj844kuys1crr31ni', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-21 04:21:12.176869'),
('twvg9c6ycfgq8dphar0ndcmu0l7k29zp', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-25 04:49:29.543611'),
('vhuwmuq2ka9lrk61a728841tkvwdfl65', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-03-01 05:59:51.176104'),
('vob6oijbdfdqgv5mnyynlzzm488ep326', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-24 06:24:43.464446'),
('vq0cy0oaazm8kza2hyohabia4wwupj5d', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-16 02:29:33.332015'),
('wg29xsnenjj9ltfk6fgmic519tvnzzkb', 'MTg2N2Q3YWQzZWU4N2UxNjE1M2NkMDM4ZmU5ZmQyNGVkNjliOGEzNjp7fQ==', '2020-02-20 03:09:09.779132'),
('wsfbgo69sgbo393n9ug2qxmlgxy90wz4', 'ZWZmY2ZiYWJiZGU4YTRjMjg4NjYxYTg3ZGI0YjRkZTZjNTViZGYzYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMzkwNDMzYzI4ZWY5ZmMzNmQwZmVjNmY5NDViY2E0ZjdhYmI1OWVmIn0=', '2020-02-26 15:05:29.299025'),
('x47bvtifwpdpgtgsqvelcdcqld91fzmy', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-20 03:10:02.922405'),
('y082rkxpx2dphg99todwierx6lwqbbjo', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-27 04:44:06.813220'),
('yyn0hihag76teincyi6b0b6n5gln7wcd', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-20 12:29:00.665572'),
('zmoqhunks4170o82mnkk2ol9wyxz0vu6', 'YWJhYTY5MmNkMGNiM2Q3ZmExZjU1N2Q3ZmY0MDY0ZDVhNGFiYzUyMzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNThlOTRmMzJjMGIxOGE5Nzg1OTI1MGUzODQyMjdjY2I5MGMxNjhiIn0=', '2020-03-01 06:20:12.636758'),
('zo6ga07a2bbtzklt664bmvbr7w1n2mmo', 'ZjZjZWExYjZmMjk5OTVlZGU0MjUzMjcxMmQ1ZDg3MDMzY2E4YTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlZTExODI0NTM4ZmVlYjkxNzFiMGQxM2QyZmVhNDYxNTBiOGM2In0=', '2020-02-21 07:43:05.705546');

-- --------------------------------------------------------

--
-- Table structure for table `server_about`
--

CREATE TABLE `server_about` (
  `id` int(11) NOT NULL,
  `about_work` varchar(255) NOT NULL,
  `about_para` longtext NOT NULL,
  `about_parafoot` longtext NOT NULL,
  `aboutimg` varchar(100) NOT NULL,
  `about_parabody` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_about`
--

INSERT INTO `server_about` (`id`, `about_work`, `about_para`, `about_parafoot`, `aboutimg`, `about_parabody`) VALUES
(1, 'UI/Graphic Designer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi eos aspernatur ipsam fugit explicabo iste! Facere nulla maxime fuga repudiandae quos provident, possimus enim error, dolores, iure corporis quasi? Harum?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, molestias.', 'pics/1.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores quisquam neque amet ratione soluta accusamus quam similique doloremque cum iure ab illo delectus architecto iste esse, commodi, fugiat ex nobis? Quo cupiditate autem nemo molestiae eveniet aspernatur quisquam nam hic.');

-- --------------------------------------------------------

--
-- Table structure for table `server_ads`
--

CREATE TABLE `server_ads` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_blog_desc`
--

CREATE TABLE `server_blog_desc` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `descfoot` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_blog_desc`
--

INSERT INTO `server_blog_desc` (`id`, `subject`, `writer`, `date`, `pic`, `title`, `desc`, `descfoot`, `user_id`) VALUES
(8, 'Politics', 'Sagar Shrestha', '2020-02-11', 'm-blog-4.jpg', 'What You Need to Know About the Senate Vote on Trump\'s Impeachment', '2019 was another busy year, focussed on preparing DOAJ for adulthood. We added muscle to the bones by increasing our capacity in the platform and in our editorial team and thereby increasing our throughput. Never before has DOAJ been such a lean operation on such a large scale.', 'Much of the process to get to where we are today was written about in September, in a guest post by Richard Jones from Cottage Labs, so I’m just focussing on the last quarter here.', 4),
(15, 'Food', 'Example', '2020-02-16', 'm-blog-1.jpg', 'Second Example', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `server_blog_detailsdesc`
--

CREATE TABLE `server_blog_detailsdesc` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `github` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `bannerimg` varchar(100) NOT NULL,
  `bodyhead` longtext NOT NULL,
  `quote` longtext NOT NULL,
  `imgright` varchar(100) NOT NULL,
  `imgleft` varchar(100) NOT NULL,
  `bodyfoot` longtext NOT NULL,
  `topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_blog_detailsdesc`
--

INSERT INTO `server_blog_detailsdesc` (`id`, `author`, `facebook`, `twitter`, `github`, `linkedin`, `bannerimg`, `bodyhead`, `quote`, `imgright`, `imgleft`, `bodyfoot`, `topic`) VALUES
(1, 'Basanta Thapa', 'https://www.facebook.com/basanta', 'https://www.facebook.com/basanta', 'https://www.facebook.com/basanta', 'https://www.facebook.com/basanta', 'feature-img1.jpg', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.  Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed  Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.', 'post-img2.jpg', 'post-img1.jpg', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.  MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `server_category_detail`
--

CREATE TABLE `server_category_detail` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_category_detail`
--

INSERT INTO `server_category_detail` (`id`, `img`, `heading`, `desc`) VALUES
(1, 'pics/portfolio5.jpg', 'Techonology', 'Technology has two faces.'),
(2, 'pics/portfolio3_Y4qxL32.jpg', 'Food', 'Technology has two faces.'),
(3, 'pics/portfolio2_BapW1wu.png', 'LifeStyle', 'Technology has two faces.');

-- --------------------------------------------------------

--
-- Table structure for table `server_commentform`
--

CREATE TABLE `server_commentform` (
  `id` int(11) NOT NULL,
  `blogName` varchar(100) NOT NULL,
  `blogEmail` varchar(100) NOT NULL,
  `blogSubject` varchar(100) NOT NULL,
  `blogMessage` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_contactform`
--

CREATE TABLE `server_contactform` (
  `id` int(11) NOT NULL,
  `conName` varchar(100) NOT NULL,
  `conEmail` varchar(100) NOT NULL,
  `conComment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_contactform`
--

INSERT INTO `server_contactform` (`id`, `conName`, `conEmail`, `conComment`) VALUES
(1, 'sagar', 'sagarcoc@gmail.com', 'gjgj'),
(2, 'sagar', 'sagarcoc@gmail.com', 'gjgj'),
(3, 'Sakriya', 'Khadka', 'I want to post my blogs...'),
(4, 'Josh', 'asdf', 'This assignment is responsive'),
(5, 'josh examle', 'example1@gmail.com', 'This is a web project.');

-- --------------------------------------------------------

--
-- Table structure for table `server_newsletter`
--

CREATE TABLE `server_newsletter` (
  `id` int(11) NOT NULL,
  `newsName` varchar(100) NOT NULL,
  `newsEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_newsletter`
--

INSERT INTO `server_newsletter` (`id`, `newsName`, `newsEmail`) VALUES
(1, 'Ankit Adhikari', 'alyohinadhikari@gmail.com'),
(2, 'Ankit Adhikari', 'example@gmail.com'),
(3, 'Sakriya Khadka', 'example12@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `server_ourteam`
--

CREATE TABLE `server_ourteam` (
  `id` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `insta` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_ourteam`
--

INSERT INTO `server_ourteam` (`id`, `pic`, `title`, `rank`, `desc`, `facebook`, `twitter`, `insta`) VALUES
(1, 'pics/team2.png', 'Jean Taylor', 'Content Writer', 'A wonderful serenity has taken possession of my entire soul, like', 'https://www.facebook.com/linkrandom/', 'https://retweetpicker.com/', 'https://retweetpicker.com/'),
(2, 'pics/team3.png', 'Cathy Romero', 'Web Designer', 'One morning, when Gregor Samsa woke from troubled dreams, he found', 'https://retweetpicker.com/', 'https://retweetpicker.com/', 'https://retweetpicker.com/'),
(3, 'pics/team1.png', 'Rudy Wright', 'Marketing Manager', 'The European languages are members of the same family. Their separate', 'https://retweetpicker.com/', 'https://retweetpicker.com/', 'https://retweetpicker.com/');

-- --------------------------------------------------------

--
-- Table structure for table `server_portfolio`
--

CREATE TABLE `server_portfolio` (
  `id` int(11) NOT NULL,
  `portfolioImg` varchar(100) NOT NULL,
  `portfolioDesc` varchar(255) NOT NULL,
  `portfolioPara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_portfolio`
--

INSERT INTO `server_portfolio` (`id`, `portfolioImg`, `portfolioDesc`, `portfolioPara`) VALUES
(1, 'pics/portfolio.jpg', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.'),
(2, 'pics/portfolio1.png', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.'),
(3, 'pics/portfolio2.png', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.'),
(4, 'pics/portfolio3.jpg', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.'),
(5, 'pics/portfolio5.jpg', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.'),
(6, 'pics/portfolio6.jpg', 'Content Writing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eros urna, efficitur non urna et, mollis pellentesque magna. Morbi consectetur.');

-- --------------------------------------------------------

--
-- Table structure for table `server_post_category`
--

CREATE TABLE `server_post_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_post_category`
--

INSERT INTO `server_post_category` (`id`, `title`, `count`) VALUES
(1, 'Life Style', 2);

-- --------------------------------------------------------

--
-- Table structure for table `server_services`
--

CREATE TABLE `server_services` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_services`
--

INSERT INTO `server_services` (`id`, `icon`, `title`, `desc`) VALUES
(1, 'fab fa-html5', 'HTML', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?'),
(2, 'fab fa-css3-alt', 'CSS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?'),
(3, 'fab fa-python', 'Python', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?'),
(4, 'fab fa-bootstrap', 'Bootstrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?'),
(5, 'fas fa-database', 'Database', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?'),
(6, 'fab fa-adobe', 'UI Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat pariatur iure dicta harum minus quo distinctio cum iste?');

-- --------------------------------------------------------

--
-- Table structure for table `server_sidebar_author`
--

CREATE TABLE `server_sidebar_author` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `post` varchar(50) NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `github` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_sidebar_author`
--

INSERT INTO `server_sidebar_author` (`id`, `img`, `name`, `post`, `facebook`, `twitter`, `github`, `linkedin`, `desc`) VALUES
(1, 'pics/boy2x.png', 'Charlie Barber', 'Senior Blog Writer', 'https://www.facebook.com/test', 'https://www.twitter.com/test', 'https://www.github.com/ankit016', 'https://www.linkedin.com/windows', 'The European languages are members of the same family. Their separate existence is a myth.');

-- --------------------------------------------------------

--
-- Table structure for table `server_testimonial`
--

CREATE TABLE `server_testimonial` (
  `id` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `star1` tinyint(1) NOT NULL,
  `star2` tinyint(1) NOT NULL,
  `star3` tinyint(1) NOT NULL,
  `star4` tinyint(1) NOT NULL,
  `star5` tinyint(1) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_testimonial`
--

INSERT INTO `server_testimonial` (`id`, `pic`, `title`, `rank`, `star1`, `star2`, `star3`, `star4`, `star5`, `desc`) VALUES
(1, 'pics/client4.png', 'Cora Collier', 'Manager', 1, 1, 1, 1, 0, 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with'),
(2, 'pics/client5.png', 'Isabel Allen', 'CEO', 1, 1, 1, 1, 1, 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with'),
(3, 'pics/client2.png', 'James Salazar', 'Sales Officer', 1, 1, 1, 0, 0, 'One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible.'),
(5, 'pics/client3.png', 'Nicholas Houston', 'Sales Officer', 1, 1, 1, 1, 1, 'One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible.'),
(7, 'pics/client1_1UqjK6C.png', 'Preston Kim', 'HR Manager', 1, 1, 1, 1, 0, 'One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible.');

-- --------------------------------------------------------

--
-- Table structure for table `server_tools`
--

CREATE TABLE `server_tools` (
  `id` int(11) NOT NULL,
  `toolname` varchar(100) NOT NULL,
  `toollist` int(11) NOT NULL,
  `toolvalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_tools`
--

INSERT INTO `server_tools` (`id`, `toolname`, `toollist`, `toolvalue`) VALUES
(1, 'Photoshop', 40, 40),
(2, 'Html', 80, 80),
(3, 'CSS', 85, 85),
(4, 'Bootstrap', 90, 90),
(5, 'Adobe XD', 60, 60),
(6, 'Python', 85, 85);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `server_about`
--
ALTER TABLE `server_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_ads`
--
ALTER TABLE `server_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_blog_desc`
--
ALTER TABLE `server_blog_desc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_blog_desc_user_id_2714a2f2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `server_blog_detailsdesc`
--
ALTER TABLE `server_blog_detailsdesc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_category_detail`
--
ALTER TABLE `server_category_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_commentform`
--
ALTER TABLE `server_commentform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_contactform`
--
ALTER TABLE `server_contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_newsletter`
--
ALTER TABLE `server_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_ourteam`
--
ALTER TABLE `server_ourteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_portfolio`
--
ALTER TABLE `server_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_post_category`
--
ALTER TABLE `server_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_services`
--
ALTER TABLE `server_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_sidebar_author`
--
ALTER TABLE `server_sidebar_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_testimonial`
--
ALTER TABLE `server_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_tools`
--
ALTER TABLE `server_tools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `server_about`
--
ALTER TABLE `server_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_ads`
--
ALTER TABLE `server_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_blog_desc`
--
ALTER TABLE `server_blog_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `server_blog_detailsdesc`
--
ALTER TABLE `server_blog_detailsdesc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `server_category_detail`
--
ALTER TABLE `server_category_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `server_commentform`
--
ALTER TABLE `server_commentform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_contactform`
--
ALTER TABLE `server_contactform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `server_newsletter`
--
ALTER TABLE `server_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `server_ourteam`
--
ALTER TABLE `server_ourteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `server_portfolio`
--
ALTER TABLE `server_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `server_post_category`
--
ALTER TABLE `server_post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_services`
--
ALTER TABLE `server_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `server_sidebar_author`
--
ALTER TABLE `server_sidebar_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_testimonial`
--
ALTER TABLE `server_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `server_tools`
--
ALTER TABLE `server_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `server_blog_desc`
--
ALTER TABLE `server_blog_desc`
  ADD CONSTRAINT `server_blog_desc_user_id_2714a2f2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
