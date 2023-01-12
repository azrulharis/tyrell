-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2023 at 05:17 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `media_id` int(11) UNSIGNED DEFAULT 0,
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
  `salary_range_average` decimal(15,0) NOT NULL DEFAULT 100000,
  `salary_range_remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `restriction` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `estimated_total_workers` int(11) UNSIGNED DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sort_order` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  `publish_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `version` tinyint(6) UNSIGNED NOT NULL DEFAULT 1
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `basic_abilities`
--
ALTER TABLE `basic_abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_players`
--
ALTER TABLE `game_players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `job_category_id` (`job_category_id`),
  ADD KEY `job_type_id` (`job_type_id`);

--
-- Indexes for table `jobs_basic_abilities`
--
ALTER TABLE `jobs_basic_abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basic_ability_id` (`basic_ability_id`);

--
-- Indexes for table `jobs_career_paths`
--
ALTER TABLE `jobs_career_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Indexes for table `jobs_personalities`
--
ALTER TABLE `jobs_personalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `personality_id` (`personality_id`),
  ADD KEY `personality_id_2` (`personality_id`),
  ADD KEY `job_id_2` (`job_id`),
  ADD KEY `job_id_3` (`job_id`);

--
-- Indexes for table `jobs_practical_skills`
--
ALTER TABLE `jobs_practical_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `practical_skill_id` (`practical_skill_id`);

--
-- Indexes for table `jobs_rec_qualifications`
--
ALTER TABLE `jobs_rec_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Indexes for table `jobs_req_qualifications`
--
ALTER TABLE `jobs_req_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Indexes for table `jobs_tools`
--
ALTER TABLE `jobs_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `job_category_id` (`job_category_id`);

--
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `practical_skills`
--
ALTER TABLE `practical_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_players`
--
ALTER TABLE `game_players`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `JobTypes` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
