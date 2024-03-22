-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 06:39 AM
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
-- Database: `iee`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryCode` char(3) NOT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountryCode`, `CountryName`) VALUES
('AUS', 'Australia'),
('CAN', 'Canada'),
('FRA', 'France'),
('GER', 'Germany'),
('UAE', 'United Arab Emirates'),
('GBR', 'United Kingdom'),
('USA', 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `countrycriteria`
--

CREATE TABLE `countrycriteria` (
  `CountryCriterionID` int(11) NOT NULL,
  `CountryCode` char(3) NOT NULL,
  `VisaCriteriaID` int(11) NOT NULL,
  `PointsValue` int(11) NOT NULL,
  `CriteriaOptions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countrycriteria`
--

INSERT INTO `countrycriteria` (`CountryCriterionID`, `CountryCode`, `VisaCriteriaID`, `PointsValue`, `CriteriaOptions`) VALUES
(1, 'USA', 1, 10, '18-21'),
(2, 'USA', 1, 8, '22-25'),
(3, 'USA', 1, 6, '26-30'),
(4, 'USA', 1, 4, '31-35'),
(5, 'USA', 1, 2, '36-Above'),
(6, 'USA', 2, 10, 'Bachelors Degree'),
(7, 'USA', 2, 8, 'Masters Degree'),
(8, 'USA', 2, 6, 'Doctorate Degree'),
(9, 'USA', 3, 4, 'Basic'),
(10, 'USA', 3, 6, 'Intermediate'),
(11, 'USA', 3, 8, 'Fluent'),
(12, 'USA', 4, 4, '1-2 years'),
(13, 'USA', 4, 6, '3-5 years'),
(14, 'USA', 4, 8, '6-10 years'),
(15, 'USA', 4, 10, '11 years and above'),
(16, 'USA', 5, 0, 'Less than $10,000'),
(17, 'USA', 5, 12, '$10,001 and above'),
(18, 'GBR', 1, 10, '18-21'),
(19, 'GBR', 1, 8, '22-25'),
(20, 'GBR', 1, 6, '26-30'),
(21, 'GBR', 1, 4, '31-35'),
(22, 'GBR', 1, 2, '36-Above'),
(23, 'GBR', 2, 10, 'Bachelors Degree'),
(24, 'GBR', 2, 8, 'Masters Degree'),
(25, 'GBR', 2, 6, 'Doctorate Degree'),
(26, 'GBR', 3, 4, 'Basic'),
(27, 'GBR', 3, 6, 'Intermediate'),
(28, 'GBR', 3, 8, 'Fluent'),
(29, 'GBR', 4, 4, '1-2 years'),
(30, 'GBR', 4, 6, '3-5 years'),
(31, 'GBR', 4, 8, '6-10 years'),
(32, 'GBR', 4, 10, '11 years and above'),
(33, 'GBR', 5, 0, 'Less than $10,000'),
(34, 'GBR', 5, 12, '$10,001 and above'),
(35, 'UAE', 1, 10, '18-21'),
(36, 'UAE', 1, 8, '22-25'),
(37, 'UAE', 1, 6, '26-30'),
(38, 'UAE', 1, 4, '31-35'),
(39, 'UAE', 1, 2, '36-Above'),
(40, 'UAE', 2, 10, 'Bachelors Degree'),
(41, 'UAE', 2, 8, 'Masters Degree'),
(42, 'UAE', 2, 6, 'Doctorate Degree'),
(43, 'UAE', 3, 4, 'Basic'),
(44, 'UAE', 3, 6, 'Intermediate'),
(45, 'UAE', 3, 8, 'Fluent'),
(46, 'UAE', 4, 4, '1-2 years'),
(47, 'UAE', 4, 6, '3-5 years'),
(48, 'UAE', 4, 8, '6-10 years'),
(49, 'UAE', 4, 10, '11 years and above'),
(50, 'UAE', 5, 0, 'Less than $10,000'),
(51, 'UAE', 5, 12, '$10,001 and above'),
(52, 'GER', 1, 10, '18-21'),
(53, 'GER', 1, 8, '22-25'),
(54, 'GER', 1, 6, '26-30'),
(55, 'GER', 1, 4, '31-35'),
(56, 'GER', 1, 2, '36-Above'),
(57, 'GER', 2, 10, 'Bachelors Degree'),
(58, 'GER', 2, 8, 'Masters Degree'),
(59, 'GER', 2, 6, 'Doctorate Degree'),
(60, 'GER', 3, 4, 'Basic'),
(61, 'GER', 3, 6, 'Intermediate'),
(62, 'GER', 3, 8, 'Fluent'),
(63, 'GER', 4, 4, '1-2 years'),
(64, 'GER', 4, 6, '3-5 years'),
(65, 'GER', 4, 8, '6-10 years'),
(66, 'GER', 4, 10, '11 years and above'),
(67, 'GER', 5, 0, 'Less than $10,000'),
(68, 'GER', 5, 12, '$10,001 and above'),
(69, 'FRA', 1, 10, '18-21'),
(70, 'FRA', 1, 8, '22-25'),
(71, 'FRA', 1, 6, '26-30'),
(72, 'FRA', 1, 4, '31-35'),
(73, 'FRA', 1, 2, '36-Above'),
(74, 'FRA', 2, 10, 'Bachelors Degree'),
(75, 'FRA', 2, 8, 'Masters Degree'),
(76, 'FRA', 2, 6, 'Doctorate Degree'),
(77, 'FRA', 3, 4, 'Basic'),
(78, 'FRA', 3, 6, 'Intermediate'),
(79, 'FRA', 3, 8, 'Fluent'),
(80, 'FRA', 4, 4, '1-2 years'),
(81, 'FRA', 4, 6, '3-5 years'),
(82, 'FRA', 4, 8, '6-10 years'),
(83, 'FRA', 4, 10, '11 years and above'),
(84, 'FRA', 5, 0, 'Less than $10,000'),
(85, 'FRA', 5, 12, '$10,001 and above'),
(86, 'AUS', 1, 10, '18-21'),
(87, 'AUS', 1, 8, '22-25'),
(88, 'AUS', 1, 6, '26-30'),
(89, 'AUS', 1, 4, '31-35'),
(90, 'AUS', 1, 2, '36-Above'),
(91, 'AUS', 2, 10, 'Bachelors Degree'),
(92, 'AUS', 2, 8, 'Masters Degree'),
(93, 'AUS', 2, 6, 'Doctorate Degree'),
(94, 'AUS', 3, 4, 'Basic'),
(95, 'AUS', 3, 6, 'Intermediate'),
(96, 'AUS', 3, 8, 'Fluent'),
(97, 'AUS', 4, 4, '1-2 years'),
(98, 'AUS', 4, 6, '3-5 years'),
(99, 'AUS', 4, 8, '6-10 years'),
(100, 'AUS', 4, 10, '11 years and above'),
(101, 'AUS', 5, 0, 'Less than $10,000'),
(102, 'AUS', 5, 12, '$10,001 and above'),
(103, 'AUS', 6, 20, 'Scored 8 and above'),
(104, 'AUS', 6, 15, 'Scored 7'),
(105, 'AUS', 6, 10, 'Scored 6'),
(106, 'AUS', 6, 0, 'Scored 5 or below'),
(107, 'CAN', 1, 10, '18-21'),
(108, 'CAN', 1, 8, '22-25'),
(109, 'CAN', 1, 6, '26-30'),
(110, 'CAN', 1, 4, '31-35'),
(111, 'CAN', 1, 2, '36-Above'),
(112, 'CAN', 2, 10, 'Bachelors Degree'),
(113, 'CAN', 2, 8, 'Masters Degree'),
(114, 'CAN', 2, 6, 'Doctorate Degree'),
(115, 'CAN', 3, 4, 'Basic'),
(116, 'CAN', 3, 6, 'Intermediate'),
(117, 'CAN', 3, 8, 'Fluent'),
(118, 'CAN', 4, 4, '1-2 years'),
(119, 'CAN', 4, 6, '3-5 years'),
(120, 'CAN', 4, 8, '6-10 years'),
(121, 'CAN', 4, 10, '11 years and above'),
(122, 'CAN', 5, 0, 'Less than $10,000'),
(123, 'CAN', 5, 12, '$10,001 and above'),
(124, 'CAN', 6, 20, 'Scored 8 and above'),
(125, 'CAN', 6, 15, 'Scored 7'),
(126, 'CAN', 6, 10, 'Scored 6'),
(127, 'CAN', 6, 0, 'Scored 5 or below'),
(128, 'USA', 7, 20, 'Yes'),
(129, 'USA', 7, 0, 'No'),
(130, 'USA', 11, 2, 'Beginner'),
(131, 'USA', 11, 4, 'Intermediate'),
(132, 'USA', 11, 6, 'Advanced'),
(133, 'USA', 11, 8, 'Expert'),
(134, 'USA', 12, 10, 'Bachelor\'s Degree'),
(135, 'USA', 12, 12, 'Master\'s Degree'),
(136, 'USA', 12, 15, 'Doctorate Degree'),
(137, 'USA', 8, 10, '1-2years'),
(138, 'USA', 8, 15, '3-5years'),
(139, 'USA', 8, 20, '6-10 years'),
(140, 'USA', 8, 25, '11 years and above'),
(141, 'USA', 9, 2, '$0 - $25,000'),
(142, 'USA', 9, 5, '$25,001 - $50,000'),
(143, 'USA', 9, 7, '$50,001 - $100,000'),
(144, 'USA', 9, 10, '$100,001 and above'),
(145, 'USA', 10, 10, 'Yes'),
(146, 'USA', 10, 0, 'No'),
(147, 'CAN', 7, 20, 'Yes'),
(148, 'CAN', 7, 0, 'No'),
(149, 'CAN', 11, 2, 'Beginner'),
(150, 'CAN', 11, 4, 'Intermediate'),
(151, 'CAN', 11, 6, 'Advanced'),
(152, 'CAN', 11, 8, 'Expert'),
(153, 'CAN', 12, 10, 'Bachelor\'s Degree'),
(154, 'CAN', 12, 12, 'Master\'s Degree'),
(155, 'CAN', 12, 15, 'Doctorate Degree'),
(156, 'CAN', 15, 4, 'Basic'),
(157, 'CAN', 15, 6, 'Intermediate'),
(158, 'CAN', 15, 8, 'Fluent'),
(159, 'CAN', 14, 15, 'Yes'),
(160, 'CAN', 14, 0, 'No'),
(161, 'CAN', 9, 2, '$0 - $25,000'),
(162, 'CAN', 9, 5, '$25,001 - $50,000'),
(163, 'CAN', 9, 7, '$50,001 - $100,000'),
(164, 'CAN', 9, 10, '$100,001 and above'),
(165, 'AUS', 7, 20, 'Yes'),
(166, 'AUS', 7, 0, 'No'),
(167, 'AUS', 11, 2, 'Beginner'),
(168, 'AUS', 11, 4, 'Intermediate'),
(169, 'AUS', 11, 6, 'Advanced'),
(170, 'AUS', 11, 8, 'Expert'),
(171, 'AUS', 12, 10, 'Bachelor\'s Degree'),
(172, 'AUS', 12, 12, 'Master\'s Degree'),
(173, 'AUS', 12, 15, 'Doctorate Degree'),
(174, 'AUS', 15, 4, 'Basic'),
(175, 'AUS', 15, 6, 'Intermediate'),
(176, 'AUS', 15, 8, 'Fluent'),
(177, 'AUS', 14, 15, 'Yes'),
(178, 'AUS', 14, 0, 'No'),
(179, 'AUS', 9, 2, '$0 - $25,000'),
(180, 'AUS', 9, 5, '$25,001 - $50,000'),
(181, 'AUS', 9, 7, '$50,001 - $100,000'),
(182, 'AUS', 9, 10, '$100,001 and above'),
(183, 'GBR', 7, 20, 'Yes'),
(184, 'GBR', 7, 0, 'No'),
(185, 'GBR', 11, 2, 'Beginner'),
(186, 'GBR', 11, 4, 'Intermediate'),
(187, 'GBR', 11, 6, 'Advanced'),
(188, 'GBR', 11, 8, 'Expert'),
(189, 'GBR', 12, 10, 'Bachelor\'s Degree'),
(190, 'GBR', 12, 12, 'Master\'s Degree'),
(191, 'GBR', 12, 15, 'Doctorate Degree'),
(192, 'GBR', 15, 4, 'Basic'),
(193, 'GBR', 15, 6, 'Intermediate'),
(194, 'GBR', 15, 8, 'Fluent'),
(195, 'GBR', 14, 15, 'Yes'),
(196, 'GBR', 14, 0, 'No'),
(197, 'GBR', 9, 2, '$0 - $25,000'),
(198, 'GBR', 9, 5, '$25,001 - $50,000'),
(199, 'GBR', 9, 7, '$50,001 - $100,000'),
(200, 'GBR', 9, 10, '$100,001 and above'),
(201, 'UAE', 7, 20, 'Yes'),
(202, 'UAE', 7, 0, 'No'),
(203, 'UAE', 11, 2, 'Beginner'),
(204, 'UAE', 11, 4, 'Intermediate'),
(205, 'UAE', 11, 6, 'Advanced'),
(206, 'UAE', 11, 8, 'Expert'),
(207, 'UAE', 12, 10, 'Bachelor\'s Degree'),
(208, 'UAE', 12, 12, 'Master\'s Degree'),
(209, 'UAE', 12, 15, 'Doctorate Degree'),
(210, 'UAE', 15, 4, 'Basic'),
(211, 'UAE', 15, 6, 'Intermediate'),
(212, 'UAE', 15, 8, 'Fluent'),
(213, 'UAE', 14, 15, 'Yes'),
(214, 'UAE', 14, 0, 'No'),
(215, 'UAE', 9, 2, 'AED0 - AED25,000'),
(216, 'UAE', 9, 5, 'AED25,001 - AED50,000'),
(217, 'UAE', 9, 7, 'AED50,001 - AED100,000'),
(218, 'UAE', 9, 10, 'AED100,001 and above'),
(219, 'FRA', 7, 20, 'Yes'),
(220, 'FRA', 7, 0, 'No'),
(221, 'FRA', 11, 2, 'Beginner'),
(222, 'FRA', 11, 4, 'Intermediate'),
(223, 'FRA', 11, 6, 'Advanced'),
(224, 'FRA', 11, 8, 'Expert'),
(225, 'FRA', 12, 10, 'Bachelor\'s Degree'),
(226, 'FRA', 12, 12, 'Master\'s Degree'),
(227, 'FRA', 12, 15, 'Doctorate Degree'),
(228, 'FRA', 15, 4, 'Basic'),
(229, 'FRA', 15, 6, 'Intermediate'),
(230, 'FRA', 15, 8, 'Fluent'),
(231, 'FRA', 14, 15, 'Yes'),
(232, 'FRA', 14, 0, 'No'),
(233, 'FRA', 9, 2, '€0 - €25,000'),
(234, 'FRA', 9, 5, '€25,001 - €50,000'),
(235, 'FRA', 9, 7, '€50,001 - €100,000'),
(236, 'FRA', 9, 10, '€100,001 and above'),
(237, 'GER', 7, 20, 'Yes'),
(238, 'GER', 7, 0, 'No'),
(239, 'GER', 11, 2, 'Beginner'),
(240, 'GER', 11, 4, 'Intermediate'),
(241, 'GER', 11, 6, 'Advanced'),
(242, 'GER', 11, 8, 'Expert'),
(243, 'GER', 12, 10, 'Bachelor\'s Degree'),
(244, 'GER', 12, 12, 'Master\'s Degree'),
(245, 'GER', 12, 15, 'Doctorate Degree'),
(246, 'GER', 15, 4, 'Basic'),
(247, 'GER', 15, 6, 'Intermediate'),
(248, 'GER', 15, 8, 'Fluent'),
(249, 'GER', 14, 15, 'Yes'),
(250, 'GER', 14, 0, 'No'),
(251, 'GER', 11, 2, '€0 - €25,000'),
(252, 'GER', 11, 5, '€25,001 - €50,000'),
(253, 'GER', 11, 7, '€50,001 - €100,000'),
(254, 'GER', 11, 10, '€100,001 and above');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `CriterionID` int(11) NOT NULL,
  `CriterionName` varchar(255) NOT NULL,
  `CriterionQuestion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`CriterionID`, `CriterionName`, `CriterionQuestion`) VALUES
(1, 'Age', 'What is your age?'),
(2, 'Highest Education Level', 'What is your highest education level?'),
(3, 'Language Proficiency', 'How proficient are you in English?'),
(4, 'Work Experience', 'How many years of work experience do you have?'),
(5, 'Financial Resources', 'How much financial funds do you have available?'),
(6, 'Job Offer from Local Employer', 'Have you received a job offer from a local employer?'),
(7, 'Wage Offered', 'What is the offered wage?'),
(8, 'H-1B Approval', 'Where you selected in the H-1B CAP Lottery?'),
(9, 'Occupational Skill level', 'What is your occupational skill level?'),
(10, 'Health Exam Result', 'What is the result of your Medical Examination?'),
(11, 'Employer Sponsorship', 'Do you have sponsorship from an employer?'),
(12, 'IELTS Score', 'What is your IELTS score?');

-- --------------------------------------------------------

--
-- Table structure for table `eligibilitythreshold`
--

CREATE TABLE `eligibilitythreshold` (
  `ThresholdID` int(11) NOT NULL,
  `CountryCode` char(3) NOT NULL,
  `VisaCategoryID` int(11) NOT NULL,
  `ThresholdPoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eligibilitythreshold`
--

INSERT INTO `eligibilitythreshold` (`ThresholdID`, `CountryCode`, `VisaCategoryID`, `ThresholdPoint`) VALUES
(1, 'USA', 1, 60),
(2, 'AUS', 1, 60),
(3, 'CAN', 1, 60),
(4, 'GBR', 1, 60),
(5, 'UAE', 1, 60),
(6, 'GER', 1, 60),
(7, 'FRA', 1, 60),
(8, 'USA', 2, 60),
(9, 'AUS', 2, 70),
(10, 'CAN', 2, 70),
(11, 'GBR', 2, 70),
(12, 'UAE', 2, 70),
(13, 'GER', 2, 60),
(14, 'FRA', 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `personalinformation`
--

CREATE TABLE `personalinformation` (
  `personal_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `marital_status` varchar(100) DEFAULT NULL,
  `education_level` varchar(255) DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `language_proficiency` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personalinformation`
--

INSERT INTO `personalinformation` (`personal_info_id`, `user_id`, `gender`, `date_of_birth`, `nationality`, `marital_status`, `education_level`, `years_of_experience`, `language_proficiency`) VALUES
(1, 1, 'Male', '1988-07-15', 'Nigeria', 'Single', 'Master\'s Degree', 8, 'Fluent'),
(2, 2, 'Female', '1990-10-22', 'India', 'Married', 'Bachelor\'s Degree', 5, 'Fluent'),
(3, 3, 'Male', '1992-03-05', 'China', 'Single', 'Doctorate Degree', 3, 'Intermediate'),
(4, 6, 'Male', '2024-03-01', 'Nigeria', 'Single', 'Master\'s Degree', 9, 'Intermediate'),
(5, 5, 'Female', '2024-03-01', 'Nigeria', 'Single', 'Master\'s Degree', 5, 'Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `profile_completion_status` enum('Completed','Uncompleted') NOT NULL DEFAULT 'Uncompleted',
  `user_status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `first_name`, `last_name`, `password`, `email`, `otp`, `salt`, `created_at`, `profile_completion_status`, `user_status`) VALUES
(1, 'Chinedu', 'Okonkwo', 'chinedusPass123', 'chinedu.okonkwo@example.com', NULL, NULL, NULL, 'Uncompleted', 'Inactive'),
(2, 'Priya', 'Kumar', 'priyasPass456', 'priya.kumar@example.com', NULL, NULL, NULL, 'Uncompleted', 'Inactive'),
(3, 'Li', 'Wei', 'lisPass789', 'li.wei@example.com', NULL, NULL, NULL, 'Uncompleted', 'Inactive'),
(5, 'Sandra', 'Okeh', 'iee2024', 'cisay17193@irnini.com', NULL, NULL, '1711013872', 'Completed', 'Active'),
(6, 'Uchechukwu', 'Udo', 'iee2024', 'udoigweuchechukwu@gmail.com', NULL, NULL, '1711021338', 'Completed', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `userselection`
--

CREATE TABLE `userselection` (
  `SubmissionID` int(11) NOT NULL,
  `CountryCriterionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DateTimeCreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userselection`
--

INSERT INTO `userselection` (`SubmissionID`, `CountryCriterionID`, `UserID`, `DateTimeCreated`) VALUES
(1, 128, 1, '2024-03-20 20:00:00'),
(1, 133, 1, '2024-03-20 20:00:00'),
(1, 135, 1, '2024-03-20 20:00:00'),
(1, 139, 1, '2024-03-20 20:00:00'),
(1, 144, 1, '2024-03-20 20:00:00'),
(1, 145, 1, '2024-03-20 20:00:00'),
(2, 128, 2, '2024-03-20 21:00:00'),
(2, 131, 2, '2024-03-20 21:00:00'),
(2, 134, 2, '2024-03-20 21:00:00'),
(2, 138, 2, '2024-03-20 21:00:00'),
(2, 143, 2, '2024-03-20 21:00:00'),
(2, 145, 2, '2024-03-20 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `visacategories`
--

CREATE TABLE `visacategories` (
  `VisaCategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visacategories`
--

INSERT INTO `visacategories` (`VisaCategoryID`, `CategoryName`) VALUES
(1, 'Study Visa'),
(2, 'Work Visa');

-- --------------------------------------------------------

--
-- Table structure for table `visacriteria`
--

CREATE TABLE `visacriteria` (
  `VisaCriteriaID` int(11) NOT NULL,
  `CriterionID` int(11) NOT NULL,
  `VisaCategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visacriteria`
--

INSERT INTO `visacriteria` (`VisaCriteriaID`, `CriterionID`, `VisaCategoryID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 12, 1),
(7, 6, 2),
(8, 4, 2),
(9, 7, 2),
(10, 8, 2),
(11, 9, 2),
(12, 2, 2),
(13, 10, 2),
(14, 11, 2),
(15, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryCode`),
  ADD UNIQUE KEY `CountryName` (`CountryName`);

--
-- Indexes for table `countrycriteria`
--
ALTER TABLE `countrycriteria`
  ADD PRIMARY KEY (`CountryCriterionID`),
  ADD KEY `CountryCode` (`CountryCode`),
  ADD KEY `VisaCriteriaID` (`VisaCriteriaID`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`CriterionID`),
  ADD UNIQUE KEY `CriterionName` (`CriterionName`);

--
-- Indexes for table `eligibilitythreshold`
--
ALTER TABLE `eligibilitythreshold`
  ADD PRIMARY KEY (`ThresholdID`),
  ADD KEY `CountryCode` (`CountryCode`),
  ADD KEY `VisaCategoryID` (`VisaCategoryID`);

--
-- Indexes for table `personalinformation`
--
ALTER TABLE `personalinformation`
  ADD PRIMARY KEY (`personal_info_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userselection`
--
ALTER TABLE `userselection`
  ADD PRIMARY KEY (`SubmissionID`,`CountryCriterionID`),
  ADD KEY `CountryCriterionID` (`CountryCriterionID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `visacategories`
--
ALTER TABLE `visacategories`
  ADD PRIMARY KEY (`VisaCategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `visacriteria`
--
ALTER TABLE `visacriteria`
  ADD PRIMARY KEY (`VisaCriteriaID`),
  ADD KEY `CriterionID` (`CriterionID`),
  ADD KEY `VisaCategoryID` (`VisaCategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrycriteria`
--
ALTER TABLE `countrycriteria`
  MODIFY `CountryCriterionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `CriterionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `eligibilitythreshold`
--
ALTER TABLE `eligibilitythreshold`
  MODIFY `ThresholdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personalinformation`
--
ALTER TABLE `personalinformation`
  MODIFY `personal_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visacategories`
--
ALTER TABLE `visacategories`
  MODIFY `VisaCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visacriteria`
--
ALTER TABLE `visacriteria`
  MODIFY `VisaCriteriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countrycriteria`
--
ALTER TABLE `countrycriteria`
  ADD CONSTRAINT `countrycriteria_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `countries` (`CountryCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `countrycriteria_ibfk_2` FOREIGN KEY (`VisaCriteriaID`) REFERENCES `visacriteria` (`VisaCriteriaID`) ON DELETE CASCADE;

--
-- Constraints for table `eligibilitythreshold`
--
ALTER TABLE `eligibilitythreshold`
  ADD CONSTRAINT `eligibilitythreshold_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `countries` (`CountryCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `eligibilitythreshold_ibfk_2` FOREIGN KEY (`VisaCategoryID`) REFERENCES `visacategories` (`VisaCategoryID`) ON DELETE CASCADE;

--
-- Constraints for table `personalinformation`
--
ALTER TABLE `personalinformation`
  ADD CONSTRAINT `personalinformation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `userselection`
--
ALTER TABLE `userselection`
  ADD CONSTRAINT `userselection_ibfk_1` FOREIGN KEY (`CountryCriterionID`) REFERENCES `countrycriteria` (`CountryCriterionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `userselection_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `visacriteria`
--
ALTER TABLE `visacriteria`
  ADD CONSTRAINT `visacriteria_ibfk_1` FOREIGN KEY (`CriterionID`) REFERENCES `criteria` (`CriterionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `visacriteria_ibfk_2` FOREIGN KEY (`VisaCategoryID`) REFERENCES `visacategories` (`VisaCategoryID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
