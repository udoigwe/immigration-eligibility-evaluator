-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 07:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `immigration_eligibility_evaluator`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_selections`
--

CREATE TABLE `applicant_selections` (
  `applicant_criteria_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant_selections`
--

INSERT INTO `applicant_selections` (`applicant_criteria_id`, `application_id`, `applicant_id`, `option_id`, `score`, `created_at`) VALUES
(1, 5, 11, 26, 15, '1710525205'),
(2, 5, 11, 10, 29, '1710525205'),
(3, 6, 11, 13, 38, '1710525742'),
(4, 7, 11, 16, 25, '1710527555'),
(5, 8, 11, 15, 30, '1710527612'),
(6, 9, 11, 4, 25, '1710527638'),
(7, 10, 11, 22, 25, '1710527653'),
(8, 11, 11, 27, 35, '1710527736'),
(9, 11, 11, 10, 29, '1710527736'),
(10, 12, 11, 21, 9, '1710528185');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `immigration_type_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `country_id`, `applicant_id`, `immigration_type_id`, `created_at`) VALUES
(5, 8, 11, 43, '1710525205'),
(6, 2, 11, 44, '1710525742'),
(7, 5, 11, 45, '1710527555'),
(8, 4, 11, 45, '1710527612'),
(9, 10, 11, 40, '1710527638'),
(10, 4, 11, 48, '1710527653'),
(11, 1, 11, 43, '1710527736'),
(12, 3, 11, 47, '1710528185');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `min_score` int(11) NOT NULL,
  `max_score` int(11) NOT NULL,
  `country_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_code`, `country_name`, `min_score`, `max_score`, `country_status`) VALUES
(1, 'AUS', 'Australia', 41, 46, 'Active'),
(2, 'CAN', 'Canada', 47, 52, 'Active'),
(3, 'DAN', 'Denmark', 53, 58, 'Active'),
(4, 'GER', 'Germany', 59, 64, 'Active'),
(5, 'NLD', 'Netherlands', 65, 70, 'Active'),
(6, 'NOR', 'Norway', 71, 76, 'Active'),
(7, 'NZL', 'New Zealand', 77, 82, 'Active'),
(8, 'SGP', 'Singapore', 83, 88, 'Active'),
(9, 'SWE', 'Sweden', 89, 94, 'Active'),
(10, 'USA', 'United States', 95, 100, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `criteria_id` int(11) NOT NULL,
  `criteria_name` varchar(100) NOT NULL,
  `display_question` text NOT NULL,
  `immigration_type_id` int(11) DEFAULT NULL,
  `criteria_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteria_id`, `criteria_name`, `display_question`, `immigration_type_id`, `criteria_status`) VALUES
(1, 'Education Level', 'What is your current educational level?', 40, 'Active'),
(2, 'Employment Status', 'What is your current employment status?', 41, 'Active'),
(3, 'Financial Stability', 'Financial Stability', 42, 'Active'),
(4, 'Travel History', 'Travel History', 43, 'Active'),
(5, 'Investment Amount', 'Investment Amount', 44, 'Active'),
(6, 'Family Relationship', 'Family relationship', 45, 'Active'),
(7, 'Asylum Eligibility', 'Asylum Eligibility', 46, 'Active'),
(8, 'Official Invitation', 'Official invitation', 47, 'Active'),
(9, 'Transit Purpose', 'Transit purpose', 48, 'Active'),
(10, 'Medical Condition', 'Medical condition', 49, 'Active'),
(11, 'International Passport Expiration Time', 'International Passport Expiration Time', 43, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_options`
--

CREATE TABLE `criteria_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `criteria_id` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `option_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria_options`
--

INSERT INTO `criteria_options` (`option_id`, `option_name`, `criteria_id`, `score`, `option_status`) VALUES
(1, 'High School', 1, 10, 'Active'),
(2, 'Bachelor Degree', 1, 15, 'Active'),
(3, 'Master Degree', 1, 20, 'Active'),
(4, 'PHD', 1, 25, 'Active'),
(5, 'Employed', 2, 30, 'Active'),
(6, 'Unemployed', 2, 9, 'Active'),
(7, 'Retired', 2, 20, 'Active'),
(8, 'Stable', 3, 25, 'Active'),
(9, 'Unstable', 3, 8, 'Active'),
(10, 'No Criminal Record', 4, 29, 'Active'),
(11, 'Previous Visa History', 4, 35, 'Active'),
(12, 'Investment > $1M', 5, 50, 'Active'),
(13, 'Investment $500K - $1M', 5, 38, 'Active'),
(14, 'Investment < $500K', 5, 20, 'Active'),
(15, 'Spouse/Child', 6, 30, 'Active'),
(16, 'Parent/Sibling', 6, 25, 'Active'),
(17, 'None', 6, 5, 'Active'),
(18, 'Eligible', 7, 30, 'Active'),
(19, 'Not Eligible', 7, 10, 'Active'),
(20, 'Yes', 8, 34, 'Active'),
(21, 'No', 8, 9, 'Active'),
(22, 'Transit', 9, 25, 'Active'),
(23, 'Visit', 9, 27, 'Active'),
(24, 'Treatment', 10, 49, 'Active'),
(25, 'Consultation', 10, 15, 'Active'),
(26, 'Expiring > 1 Year', 11, 15, 'Active'),
(27, 'Expiring > 3 Years', 11, 35, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `immigration_types`
--

CREATE TABLE `immigration_types` (
  `immigration_type_id` int(11) NOT NULL,
  `immigration_type_name` varchar(100) NOT NULL,
  `immigration_type_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `immigration_types`
--

INSERT INTO `immigration_types` (`immigration_type_id`, `immigration_type_name`, `immigration_type_status`) VALUES
(40, 'Study Visa', 'Active'),
(41, 'Work Visa', 'Active'),
(42, 'Permanent Residence', 'Active'),
(43, 'Tourist Visa', 'Active'),
(44, 'Business Visa', 'Active'),
(45, 'Family Reunion', 'Active'),
(46, 'Refugee Status', 'Active'),
(47, 'Diplomatic Visa', 'Active'),
(48, 'Transit Visa', 'Active'),
(49, 'Medical Visa', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` bigint(13) NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `dob`, `gender`, `email`, `password`, `country_id`, `created_at`, `user_status`) VALUES
(11, 'Arnold', 'Swazneggar', '2019-02-15', 'Male', 'arnold@example.com', 'iee2024', 10, 1710525068, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_selections`
--
ALTER TABLE `applicant_selections`
  ADD PRIMARY KEY (`applicant_criteria_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `application_id` (`application_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `immigration_type_id` (`immigration_type_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_code` (`country_code`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteria_id`),
  ADD KEY `immigration_type_id` (`immigration_type_id`);

--
-- Indexes for table `criteria_options`
--
ALTER TABLE `criteria_options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `immigration_types`
--
ALTER TABLE `immigration_types`
  ADD PRIMARY KEY (`immigration_type_id`),
  ADD UNIQUE KEY `immigration_type_name` (`immigration_type_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_selections`
--
ALTER TABLE `applicant_selections`
  MODIFY `applicant_criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `criteria_options`
--
ALTER TABLE `criteria_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `immigration_types`
--
ALTER TABLE `immigration_types`
  MODIFY `immigration_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_selections`
--
ALTER TABLE `applicant_selections`
  ADD CONSTRAINT `applicant_selections_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `applications` (`applicant_id`),
  ADD CONSTRAINT `applicant_selections_ibfk_3` FOREIGN KEY (`option_id`) REFERENCES `criteria_options` (`option_id`),
  ADD CONSTRAINT `applicant_selections_ibfk_4` FOREIGN KEY (`application_id`) REFERENCES `applications` (`application_id`);

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`immigration_type_id`) REFERENCES `immigration_types` (`immigration_type_id`);

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`immigration_type_id`) REFERENCES `immigration_types` (`immigration_type_id`);

--
-- Constraints for table `criteria_options`
--
ALTER TABLE `criteria_options`
  ADD CONSTRAINT `criteria_options_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`criteria_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
