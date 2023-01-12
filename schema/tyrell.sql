-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2023 at 03:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyrell`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(125) NOT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `basic_abilities`
--

CREATE TABLE `basic_abilities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `total_player` tinyint(125) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `total_player`) VALUES
(1, 'fasdfasd', 3),
(2, 'fasdfasd', 3),
(3, 'fasdfasd', 3),
(4, 'fasdfasd', 3),
(5, 'fasdfasd', 3),
(6, 'fasdfasd', 3),
(7, 'fasdfasd', 3),
(8, 'fasdfasd', 3),
(9, 'fasdfasd', 3),
(10, 'fasdfasd', 3),
(11, 'fasdfasd', 3),
(12, 'fasdfasd', 3),
(13, 'fasdfasd', 3),
(14, 'Test 1', 2),
(15, 'Game 2', 2),
(16, '1', 2),
(17, '1', 2),
(18, 'Game 18', 2),
(19, 'Game 19', 2),
(20, 'Game 20', 2),
(21, 'Game 21', 2),
(22, 'Game 22', 2),
(23, 'Game 23', 2),
(24, 'Game 24', 2),
(25, 'Game 25', 2),
(26, 'Game 26', 2),
(27, 'Game 27', 4),
(28, 'Game 28', 2),
(29, 'Game 29', 2),
(30, 'Game 30', 2),
(31, 'Game 31', 2),
(32, 'Game 32', 2),
(33, 'Game 33', 4);

-- --------------------------------------------------------

--
-- Table structure for table `game_players`
--

CREATE TABLE `game_players` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL COMMENT 'Player name',
  `game_id` int(11) UNSIGNED NOT NULL,
  `card` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_players`
--

INSERT INTO `game_players` (`id`, `name`, `game_id`, `card`) VALUES
(1, 'Player 1', 13, 'D-X,S-4,C-7,H-J,S-6,C-X,H-X,D-5,C-6,C-9,H-7,S-2,C-8,H-9,D-8,D-A,H-2,H-3'),
(2, 'Player 2', 13, 'D-4,D-K,D-3,H-4,S-8,S-3,C-3,D-9,S-Q,H-Q,H-5,D-J,S-A,C-2,H-K,D-Q,S-X,C-4'),
(3, 'Player 3', 13, 'D-6,S-9,C-5,D-2,C-Q,D-7,S-7,C-A,H-8,S-K,S-J,H-6,C-K,H-A,S-5,C-J'),
(4, 'Player 1', 14, 'H-J,D-3,S-3,H-7,S-6,C-A,C-K,H-Q,D-2,S-8,D-J,C-6,S-J,S-Q,H-K,C-8,C-5,C-3,S-K,S-2,C-X,H-2,C-4,S-4,C-Q,D-6'),
(5, 'Player 2', 14, 'D-7,H-4,D-Q,D-9,C-7,H-5,S-A,D-4,H-8,S-7,D-X,H-3,S-X,H-X,H-9,C-2,D-A,S-9,D-8,D-5,H-A,C-9,C-J,D-K,H-6,S-5'),
(6, 'Player 1', 15, 'H-X,H-A,C-2,D-2,C-7,H-4,S-5,C-4,S-J,C-Q,S-X,H-Q,H-6,S-6,H-J,H-9,D-5,S-9,D-3,C-3,S-K,C-8,H-3,D-8,C-X,D-X'),
(7, 'Player 2', 15, 'C-6,S-2,S-3,C-9,C-K,D-6,C-J,S-4,D-4,H-2,S-7,D-7,H-5,H-8,D-9,D-K,C-A,D-J,D-A,C-5,S-Q,S-A,H-7,D-Q,S-8,H-K'),
(8, 'Player 1', 16, 'S-3,C-A,S-8,S-7,H-4,D-4,S-J,C-Q,C-X,C-6,H-A,D-8,H-2,D-3,C-5,H-K,D-A,H-7,S-4,H-6,C-4,S-2,H-J,H-9,C-K,S-A'),
(9, 'Player 2', 16, 'H-Q,D-9,H-X,D-7,C-8,S-K,D-J,C-3,S-6,D-K,C-9,C-J,H-8,D-5,H-5,C-7,C-2,D-Q,S-Q,S-5,D-X,D-6,H-3,S-9,D-2,S-X'),
(10, 'Player 1', 17, 'H-5,D-2,C-K,D-4,S-4,S-9,D-Q,C-9,H-J,H-3,S-A,D-X,S-6,D-6,C-8,D-K,D-J,S-3,H-8,C-A,C-2,S-7,S-2,C-J,H-4,H-9'),
(11, 'Player 2', 17, 'C-7,C-Q,D-5,H-7,D-9,D-A,C-6,S-X,H-Q,S-J,D-8,H-K,H-2,S-K,H-X,C-4,S-Q,H-6,H-A,C-X,C-5,D-3,C-3,S-5,D-7,S-8'),
(12, 'Player 1', 18, 'S-K,D-Q,S-4,S-Q,H-7,H-X,H-9,C-4,S-2,D-9,D-2,H-A,S-7,S-3,S-6,H-3,C-K,C-8,C-Q,C-2,D-K,H-8,D-A,D-J,S-8,C-7'),
(13, 'Player 2', 18, 'C-9,D-7,C-3,C-J,S-5,C-X,S-9,D-5,S-X,C-5,C-A,H-K,D-4,H-5,S-J,H-J,D-3,C-6,H-4,H-6,D-X,S-A,H-2,D-8,D-6,H-Q'),
(14, 'Player 1', 19, 'D-8,H-8,C-7,S-5,C-4,D-A,S-8,S-4,D-K,C-Q,C-3,H-A,S-J,S-7,D-4,S-Q,C-2,S-6,H-3,S-X,D-5,D-J,H-Q,D-3,H-X,D-7'),
(15, 'Player 2', 19, 'H-9,S-9,C-K,H-4,C-6,H-6,C-X,C-5,S-3,C-A,H-7,D-2,H-K,C-9,H-5,H-J,D-9,D-X,S-K,S-2,D-6,C-8,S-A,H-2,C-J,D-Q'),
(16, 'Player 1', 20, 'S-3,C-2,H-9,H-A,S-X,S-7,S-8,D-4,C-K,C-5,S-6,S-5,D-3,S-4,C-3,H-X,C-8,H-3,S-K,H-5,D-5,H-2,H-Q,C-Q,H-K,D-2'),
(17, 'Player 2', 20, 'C-9,D-9,S-9,S-J,C-J,D-Q,C-X,H-4,H-7,S-A,D-7,D-6,C-7,C-A,C-4,H-8,H-J,D-X,S-Q,D-8,C-6,S-2,D-K,H-6,D-A,D-J'),
(18, 'Player 1', 21, 'C-8,D-3,S-2,S-9,C-Q,H-A,D-5,H-6,H-7,H-X,S-3,D-Q,C-7,H-4,C-A,C-4,S-Q,S-8,H-2,S-4,C-6,C-5,C-2,D-J,S-X,D-K'),
(19, 'Player 2', 21, 'D-9,D-X,S-A,H-8,D-A,D-8,S-6,S-K,D-4,H-5,D-7,H-J,S-7,C-X,D-6,S-J,C-3,C-9,H-K,S-5,H-Q,H-9,C-K,D-2,C-J,H-3'),
(20, 'Player 1', 22, 'D-8,H-5,D-K,C-8,C-X,S-5,D-7,H-2,D-5,C-9,S-3,S-7,H-X,S-6,H-6,C-Q,H-4,S-2,S-9,C-6,S-J,D-6,D-A,D-Q,S-X,C-7'),
(21, 'Player 2', 22, 'S-8,C-J,D-9,D-3,D-J,C-5,H-7,H-3,H-9,S-K,D-4,C-K,C-3,C-2,D-X,H-Q,H-A,H-8,S-4,C-4,S-Q,H-J,S-A,C-A,D-2,H-K'),
(22, 'Player 1', 23, 'S-8,C-9,S-6,C-J,H-5,H-3,D-8,S-4,D-A,C-8,H-K,C-5,S-7,H-X,C-3,C-7,D-5,D-J,D-4,D-6,S-Q,H-6,S-5,C-X,C-A,S-A'),
(23, 'Player 2', 23, 'S-J,D-3,S-K,D-Q,H-A,D-7,H-9,D-X,H-J,D-2,H-2,D-9,C-K,S-3,C-6,S-X,C-2,H-4,S-9,H-8,C-4,H-Q,H-7,S-2,D-K,C-Q'),
(24, 'Player 1', 24, 'S-Q,C-K,H-A,H-4,H-J,S-3,D-7,S-9,S-5,C-4,D-2,S-K,D-8,C-8,H-Q,C-3,D-6,H-X,S-X,H-5,D-9,S-6,D-3,S-2,C-Q,C-5'),
(25, 'Player 2', 24, 'D-J,H-K,D-5,D-X,S-J,C-6,D-A,C-J,S-A,D-Q,S-4,H-3,H-7,H-2,C-9,C-X,C-A,C-2,D-K,S-7,H-8,H-9,H-6,C-7,D-4,S-8'),
(26, 'Player 1', 25, 'C-8,C-3,H-K,D-9,C-J,C-A,S-K,H-X,D-7,S-6,C-9,S-3,D-X,S-8,C-2,S-2,S-A,D-J,S-7,C-Q,D-8,H-7,S-4,D-A,C-4,H-8'),
(27, 'Player 2', 25, 'D-4,S-X,H-2,D-Q,H-6,H-5,H-3,C-5,C-K,C-6,H-4,C-7,S-5,S-9,D-2,C-X,D-K,H-Q,H-A,S-Q,H-9,S-J,H-J,D-3,D-6,D-5'),
(28, 'Player 1', 26, 'C-8,D-5,S-A,H-9,C-7,C-3,C-9,D-A,H-2,H-8,D-X,C-5,S-7,D-3,D-4,C-4,D-6,H-K,H-6,C-X,H-3,S-5,D-2,S-4,C-A,S-3'),
(29, 'Player 2', 26, 'D-J,C-2,S-6,H-J,C-6,S-J,S-Q,C-J,H-5,H-4,S-9,C-Q,D-8,S-2,C-K,H-X,H-Q,D-Q,D-7,H-A,S-X,D-9,D-K,S-8,S-K,H-7'),
(30, 'Player 1', 27, 'H-X,S-5,C-Q,H-3,D-Q,D-6,S-9,C-2,D-9,C-5,C-J,S-3,D-5'),
(31, 'Player 2', 27, 'S-2,C-7,H-4,S-6,S-4,D-X,C-6,H-6,S-7,D-K,D-8,C-3,H-A'),
(32, 'Player 3', 27, 'S-Q,S-A,C-K,H-9,S-J,H-Q,H-K,D-A,C-4,S-8,H-7,D-J,D-3'),
(33, 'Player 4', 27, 'S-K,D-4,C-A,C-8,H-J,H-2,H-8,S-X,C-X,D-2,H-5,C-9,D-7'),
(34, 'Player 1', 28, 'D-3,H-Q,D-7,C-8,C-J,H-X,C-6,D-J,C-5,D-4,H-J,D-A,D-5,S-K,C-Q,H-A,C-A,C-7,S-A,C-9,S-X,S-J,H-7,H-9,S-3,H-2'),
(35, 'Player 2', 28, 'S-6,H-6,D-9,C-3,S-9,C-X,S-8,D-2,S-5,H-4,S-2,S-Q,S-4,C-2,D-K,D-Q,C-4,C-K,D-6,H-5,D-X,H-K,S-7,D-8,H-8,H-3'),
(36, 'Player 1', 29, 'H-8,D-4,D-J,H-3,H-5,C-K,S-A,S-2,S-4,D-9,C-9,H-J,C-J,S-7,D-Q,C-8,H-X,C-3,D-3,D-2,S-6,S-3,H-6,H-4,C-4,D-8'),
(37, 'Player 2', 29, 'D-7,D-K,D-5,D-A,S-5,S-8,D-X,H-7,S-J,H-K,S-Q,D-6,S-X,S-9,C-5,H-Q,C-A,C-Q,H-9,H-A,C-2,S-K,H-2,C-X,C-6,C-7'),
(38, 'Player 1', 30, 'C-6,S-7,C-2,S-3,C-5,C-3,H-4,S-6,C-J,D-6,C-Q,H-8,D-8,S-2,D-J,C-7,H-6,S-K,D-4,D-K,H-X,H-9,D-5,S-J,H-J,H-7'),
(39, 'Player 2', 30, 'D-7,H-A,C-8,S-A,D-3,S-5,D-X,D-Q,H-K,H-Q,C-K,S-8,D-A,C-A,C-X,D-9,S-X,H-2,S-9,H-5,C-9,S-4,D-2,H-3,S-Q,C-4'),
(40, 'Player 1', 31, 'S-7,H-J,S-9,H-X,C-8,D-Q,D-J,S-A,H-A,C-4,D-K,D-A,C-J,C-6,D-X,C-X,H-4,D-7,D-6,S-8,S-2,S-3,C-3,D-9,S-6,C-Q'),
(41, 'Player 2', 31, 'H-6,D-2,S-K,D-5,H-3,H-7,H-5,D-8,S-J,H-8,H-Q,H-2,C-9,C-2,D-3,S-X,S-4,S-Q,D-4,C-A,H-K,C-5,H-9,S-5,C-7,C-K'),
(42, 'Player 1', 32, 'H-8,D-A,S-X,C-2,C-7,D-2,S-7,S-5,D-7,C-5,H-2,C-3,D-K,D-4,C-4,D-9,H-A,S-2,D-5,H-7,S-6,S-Q,C-Q,D-J,H-J,D-6'),
(43, 'Player 2', 32, 'S-A,C-X,C-9,S-K,H-3,H-4,C-8,D-3,C-K,C-J,H-6,H-Q,H-K,H-X,S-9,H-5,D-X,D-Q,S-J,C-6,S-3,C-A,H-9,S-8,D-8,S-4'),
(44, 'Player 1', 33, 'D-J,C-K,C-X,D-2,D-Q,S-7,C-Q,D-4,C-7,H-2,C-8,D-9,S-5'),
(45, 'Player 2', 33, 'S-9,C-5,C-2,S-4,C-9,S-J,H-6,D-8,S-A,C-4,H-7,D-6,H-Q'),
(46, 'Player 3', 33, 'H-J,D-X,C-6,H-8,C-J,S-Q,H-3,D-7,H-5,H-K,S-X,S-2,D-5'),
(47, 'Player 4', 33, 'C-3,H-4,C-A,D-K,D-A,H-X,S-K,S-3,S-8,H-A,D-3,H-9,S-6');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `media_id` int(11) UNSIGNED NOT NULL,
  `job_category_id` int(11) UNSIGNED NOT NULL,
  `job_type_id` int(11) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `business_skill` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `knowledge` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `academic_degree_doctor` tinyint(1) UNSIGNED DEFAULT 0,
  `academic_degree_master` tinyint(1) UNSIGNED DEFAULT 0,
  `academic_degree_professional` tinyint(1) UNSIGNED DEFAULT 0,
  `academic_degree_bachelor` tinyint(1) UNSIGNED DEFAULT 0,
  `salary_statistic_group` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `salary_range_first_year` decimal(14,0) DEFAULT 0,
  `salary_range_remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `restriction` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `estimated_total_workers` int(11) UNSIGNED DEFAULT 0,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sort_order` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_basic_abilities`
--

CREATE TABLE `jobs_basic_abilities` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `basic_ability_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_career_paths`
--

CREATE TABLE `jobs_career_paths` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `affiliate_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_personalities`
--

CREATE TABLE `jobs_personalities` (
  `id` int(11) UNSIGNED NOT NULL,
  `personality_id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_practical_skills`
--

CREATE TABLE `jobs_practical_skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `practical_skill_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rec_qualifications`
--

CREATE TABLE `jobs_rec_qualifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `affiliate_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_req_qualifications`
--

CREATE TABLE `jobs_req_qualifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `affiliate_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tools`
--

CREATE TABLE `jobs_tools` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `affiliate_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` int(11) UNSIGNED NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_id` int(11) UNSIGNED NOT NULL,
  `sort_order` int(11) UNSIGNED NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

CREATE TABLE `personalities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_520_ci NOT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `practical_skills`
--

CREATE TABLE `practical_skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `deleted` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_abilities`
--
ALTER TABLE `basic_abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_players`
--
ALTER TABLE `game_players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_basic_abilities`
--
ALTER TABLE `jobs_basic_abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_career_paths`
--
ALTER TABLE `jobs_career_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_personalities`
--
ALTER TABLE `jobs_personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_practical_skills`
--
ALTER TABLE `jobs_practical_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_rec_qualifications`
--
ALTER TABLE `jobs_rec_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_req_qualifications`
--
ALTER TABLE `jobs_req_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_tools`
--
ALTER TABLE `jobs_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practical_skills`
--
ALTER TABLE `practical_skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_abilities`
--
ALTER TABLE `basic_abilities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `game_players`
--
ALTER TABLE `game_players`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_basic_abilities`
--
ALTER TABLE `jobs_basic_abilities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_career_paths`
--
ALTER TABLE `jobs_career_paths`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_personalities`
--
ALTER TABLE `jobs_personalities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_practical_skills`
--
ALTER TABLE `jobs_practical_skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_rec_qualifications`
--
ALTER TABLE `jobs_rec_qualifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_req_qualifications`
--
ALTER TABLE `jobs_req_qualifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_tools`
--
ALTER TABLE `jobs_tools`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `practical_skills`
--
ALTER TABLE `practical_skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
