-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 07:08 AM
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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_code` varchar(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_criteria`
--

CREATE TABLE `country_criteria` (
  `country_criteria_id` int(11) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `criterion_id` int(11) NOT NULL,
  `criterion_value` int(255) NOT NULL,
  `country_criteria_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criteria_definitions`
--

CREATE TABLE `criteria_definitions` (
  `criterion_id` int(11) NOT NULL,
  `criterion_name` varchar(50) DEFAULT NULL,
  `criterion_type` varchar(10) DEFAULT NULL,
  `criterion_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `nationality` varchar(255) NOT NULL,
  `created_at` bigint(13) NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `country_code` (`country_code`);

--
-- Indexes for table `country_criteria`
--
ALTER TABLE `country_criteria`
  ADD PRIMARY KEY (`country_criteria_id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `criterion_id` (`criterion_id`);

--
-- Indexes for table `criteria_definitions`
--
ALTER TABLE `criteria_definitions`
  ADD PRIMARY KEY (`criterion_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_criteria`
--
ALTER TABLE `country_criteria`
  MODIFY `country_criteria_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `criteria_definitions`
--
ALTER TABLE `criteria_definitions`
  MODIFY `criterion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country_criteria`
--
ALTER TABLE `country_criteria`
  ADD CONSTRAINT `country_criteria_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`),
  ADD CONSTRAINT `country_criteria_ibfk_2` FOREIGN KEY (`criterion_id`) REFERENCES `criteria_definitions` (`criterion_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
