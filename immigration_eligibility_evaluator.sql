-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:24 PM
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
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_post_id` int(11) NOT NULL,
  `blog_post_title` varchar(255) NOT NULL,
  `blog_post_created_at` varchar(255) NOT NULL,
  `blog_post_author` varchar(255) NOT NULL,
  `blog_post` text NOT NULL,
  `blog_post_cover_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_post_id`, `blog_post_title`, `blog_post_created_at`, `blog_post_author`, `blog_post`, `blog_post_cover_image`) VALUES
(1, 'Brazilian Carnival: A Cultural Extravaganza and its Influence on Immigration to Brazil', '1713666188', 'Ijeoma Eze', '<p>\nThe vibrant and exuberant Brazilian Carnival stands as a testament to the country\'s rich cultural heritage and has long been a magnet for tourists and immigrants alike. This annual celebration, known for its electrifying samba music, dazzling costumes, and energetic street parades, captures the essence of Brazilian identity and has a significant impact on immigration trends in Brazil.\n</p>\n\n<h5>A Spectacle of Diversity</h5>\n\n<p>\nThe Brazilian Carnival is a melting pot of cultural influences, reflecting the country\'s diverse population and history. From African rhythms to indigenous traditions, and Portuguese customs to modern-day innovations, the Carnival embraces a myriad of cultural elements, creating a truly unique and inclusive experience.\n</p>\n\n<h5>Attracting Global Attention</h5>\n\n<p>\nWith its global reputation for being the \"Greatest Show on Earth,\" the Brazilian Carnival draws millions of visitors from around the world each year. Tourists flock to cities like Rio de Janeiro, São Paulo, and Salvador to witness the spectacle firsthand, immersing themselves in the infectious energy and joie de vivre that permeates the streets during the festivities.\n</p>\n\n<h5>Immigration and Cultural Exchange</h5>\n\n<p>\nBeyond its allure for tourists, the Brazilian Carnival also plays a significant role in immigration to Brazil. Many visitors are so captivated by the vibrancy and warmth of Brazilian culture during the Carnival that they decide to extend their stay or even make Brazil their new home.\n</p>\n\n<h5>Opportunities and Challenges</h5>\n\n<p>\nFor immigrants, Brazil offers a diverse range of opportunities, from employment prospects in industries such as tourism, entertainment, and hospitality to the chance to experience a rich tapestry of cultural traditions. However, navigating the immigration process can be complex, requiring a thorough understanding of visa requirements, residency permits, and legal regulations.\n</p>\n\n<h5>Navigating the Immigration Landscape</h5>\n\n<p>\nAs interest in relocating to Brazil grows, immigrants must be well-informed about the various pathways available to them. Whether seeking temporary residency to participate in the Carnival festivities or pursuing long-term settlement, individuals must adhere to the country\'s immigration laws and procedures.\n</p>\n\n<h5>The Role of Carnival in Integration</h5>\n\n<p>\nFor immigrants who have chosen to make Brazil their home, the Carnival serves as a symbol of integration and belonging. Participating in Carnival activities, whether as performers, spectators, or volunteers, provides newcomers with an opportunity to connect with local communities, forge friendships, and contribute to the cultural tapestry of Brazil.\n</p>\n\n<h5>Looking Ahead</h5>\n\n<p>\nAs Brazil continues to evolve as a global destination for tourism and immigration, the Brazilian Carnival remains a beacon of cultural pride and celebration. Its enduring legacy as a symbol of unity, diversity, and inclusivity underscores the integral role it plays in shaping Brazil\'s identity and welcoming newcomers to its shores.\n</p>\n\n<h5>Conclusion</h5>\n\n<p>\nIn conclusion, the Brazilian Carnival is not just a festival; it\'s a cultural phenomenon that transcends borders and brings people together from all walks of life. As Brazil embraces its role on the world stage, the Carnival serves as a powerful reminder of the country\'s rich heritage and its ongoing journey towards a more inclusive and vibrant future.\n</p>\n\n<p>\n<a href=\"#\">Learn more about immigration to Brazil and explore opportunities to experience the magic of the Brazilian Carnival firsthand.</a>\n</p>', 'assets/images/sliders/brazil.jpg'),
(2, 'Unlock the Sky: Burj Khalifa and the Gateway to Immersive Experiences', '1713666188', 'Ijeoma Eze', '\n<p>\nIn the heart of the bustling metropolis of Dubai, a marvel of human ingenuity pierces the clouds, reaching for the heavens. Standing tall as the world\'s tallest building, the Burj Khalifa isn\'t just a structure; it\'s an icon of aspiration and a beacon of opportunity.\n</p>\n\n<h5>Rising Above: A Towering Achievement</h5>\n\n<p>\nAt a staggering height of 828 meters, the Burj Khalifa soars above the city skyline, commanding attention and admiration from all who behold its majestic silhouette. Its sleek design, inspired by the natural geometry of a desert flower, symbolizes the fusion of innovation and elegance.\n</p>\n\n<h5>A Window to the World</h5>\n\n<p>\nFrom its lofty observation decks, visitors are treated to panoramic views that stretch as far as the eye can see. The sprawling cityscape of Dubai unfolds beneath them, revealing a tapestry of modern architecture, pristine beaches, and desert vistas. At sunset, the city transforms into a canvas of vibrant hues, painting the sky with a symphony of colors.\n</p>\n\n<h5>A Journey of Discovery</h5>\n\n<p>\nBut the allure of the Burj Khalifa extends beyond its awe-inspiring height. It serves as a gateway to a world of immersive experiences, where visitors can embark on a journey of discovery and exploration. From the interactive exhibits in the At the Top SKY lounge to the immersive virtual reality tours of Dubai\'s past, present, and future, every corner of the Burj Khalifa invites visitors to uncover the secrets of this architectural marvel.\n</p>\n\n<h5>Impact on Immigration: A World of Opportunity</h5>\n\n<p>\nThe Burj Khalifa isn\'t just a testament to human achievement; it\'s also a catalyst for growth and opportunity. As one of the world\'s most iconic landmarks, it attracts millions of tourists from every corner of the globe, each seeking to experience the magic of Dubai firsthand.\n</p>\n\n<h5>The Magnetic Pull of Dubai</h5>\n\n<p>\nFor many visitors, the allure of the Burj Khalifa is the first step on a journey that leads to new horizons. Dubai\'s reputation as a global hub for business, innovation, and culture makes it an attractive destination for immigrants seeking to build a better future for themselves and their families.\n</p>\n\n<h5>Opportunity Awaits</h5>\n\n<p>\nFrom entrepreneurs and professionals to artists and dreamers, Dubai welcomes individuals from all walks of life, offering a wealth of opportunities and a vibrant multicultural environment. Whether you\'re drawn to the city\'s thriving economy, its world-class amenities, or its diverse cultural tapestry, Dubai has something to offer everyone.\n</p>\n\n<h5>Experience the Extraordinary</h5>\n\n<p>\nSo why wait? Embark on an unforgettable adventure and experience the magic of Dubai and the Burj Khalifa for yourself. Whether you\'re gazing out over the city from its lofty heights or exploring its vibrant streets below, you\'ll discover a world of wonder waiting to be explored.\n</p>\n\n<h5>Conclusion: Reach for the Sky</h5>\n\n<p>\nIn conclusion, the Burj Khalifa isn\'t just a building; it\'s a symbol of possibility and a testament to the human spirit. Its impact on immigration to Dubai is a testament to the city\'s allure and the opportunities it offers to those who dare to dream. So why not join them? Come, unlock the sky, and experience the extraordinary heights of Dubai and the Burj Khalifa.\n</p>\n\n<p>\nYour adventure awaits.\n</p>', 'assets/images/sliders/uae.jpg'),
(3, 'The Impact of IELTS in Immigration: Conquering the Fear and Best Ways to Pass', '1713666188', 'Ijeoma Eze', '\n<p>\nThe International English Language Testing System (IELTS) plays a crucial role in immigration processes for many countries around the world. This standardized test assesses the language proficiency of individuals who wish to study, work, or immigrate to English-speaking countries. Let\'s explore the impact of IELTS in immigration and discover effective strategies to conquer the fear associated with it.\n</p>\n\n<h2>Understanding the Significance</h2>\n\n<p>\nIELTS scores are often a prerequisite for visa applications, particularly for student visas, work permits, and permanent residency applications. Immigration authorities use IELTS scores to evaluate an applicant\'s ability to communicate effectively in English, which is essential for integration into English-speaking communities.\n</p>\n\n<h5>Conquering the Fear of IELTS</h5>\n\n<p>\nMany individuals experience anxiety and apprehension when faced with the prospect of taking the IELTS exam. However, it\'s important to remember that IELTS is designed to assess your language skills objectively. By adopting a positive mindset, setting realistic goals, and practicing regularly, you can overcome your fear of IELTS and approach the exam with confidence.\n</p>\n\n<h5>Effective Strategies to Conquer the Fear:</h5>\n\n<ol>\n    <li><strong>Understand the Test Format:</strong> Familiarize yourself with the structure and format of the IELTS exam, including the types of questions and the timing of each section.</li>\n    <li><strong>Practice Regularly:</strong> Dedicate time to practicing each component of the IELTS exam, including listening, reading, writing, and speaking. Utilize official IELTS practice materials and online resources to improve your skills.</li>\n    <li><strong>Seek Feedback:</strong> Take advantage of opportunities to receive feedback on your language proficiency from teachers, tutors, or language exchange partners. Constructive feedback can help identify areas for improvement and enhance your performance on the exam.</li>\n    <li><strong>Simulate Test Conditions:</strong> Mimic the exam environment as closely as possible during your practice sessions. Practice timed exercises, adhere to the exam instructions, and simulate speaking tasks with a partner to build confidence.</li>\n    <li><strong>Stay Positive:</strong> Maintain a positive attitude throughout your preparation journey. Focus on your progress, celebrate your achievements, and visualize success on exam day.</li>\n</ol>\n\n<h5>Best Ways to Pass the IELTS Exam</h5>\n\n<p>\nAchieving a desirable score on the IELTS exam requires diligent preparation and effective study strategies. Here are some best practices to help you succeed:\n</p>\n\n<ol>\n    <li><strong>Set Clear Goals:</strong> Establish realistic score targets for each section of the exam based on your immigration or academic requirements.</li>\n    <li><strong>Develop Strong Language Skills:</strong> Enhance your English language proficiency in all areas, including listening, reading, writing, and speaking. Focus on building vocabulary, grammar, and comprehension skills through targeted practice.</li>\n    <li><strong>Practice Time Management:</strong> Allocate sufficient time for each section of the exam during your practice sessions. Develop strategies to manage your time effectively and prioritize questions based on difficulty.</li>\n    <li><strong>Utilize Official Resources:</strong> Take advantage of official IELTS practice materials, sample questions, and past exam papers to familiarize yourself with the test format and content.</li>\n    <li><strong>Enhance Speaking Skills:</strong> Practice speaking English regularly with native speakers or language partners to improve fluency, pronunciation, and coherence. Record yourself during practice sessions to identify areas for improvement.</li>\n    <li><strong>Improve Reading and Listening Skills:</strong> Expose yourself to a variety of English texts, such as articles, essays, and academic journals, to enhance reading comprehension. Listen to podcasts, watch English-language movies, and engage with audio materials to improve listening skills.</li>\n    <li><strong>Master Writing Techniques:</strong> Learn the conventions of academic and general writing styles and practice writing essays, reports, and letters within the specified time limits. Focus on organizing your ideas logically, using appropriate language, and addressing the task requirements effectively.</li>\n</ol>\n\n<h5>Tips and Skills for Success</h5>\n\n<p>\nIn addition to effective study strategies, consider incorporating the following tips and skills into your IELTS preparation:\n</p>\n\n<ul>\n    <li><strong>Effective Note-Taking:</strong> Develop efficient note-taking techniques to capture key information while listening to audio recordings or reading passages. Use abbreviations, symbols, and keywords to summarize main ideas and supporting details.</li>\n    <li><strong>Critical Thinking:</strong> Practice critical thinking skills by analyzing and evaluating information presented in reading passages and listening exercises. Develop the ability to identify main arguments, recognize implicit meanings, and draw logical conclusions.</li>\n    <li><strong>Active Listening:</strong> Cultivate active listening skills by engaging with a variety of English-language materials, such as podcasts, TED talks, and news broadcasts. Focus on understanding main ideas, identifying supporting details, and making inferences based on context.</li>\n    <li><strong>Effective Communication:</strong> Practice expressing your ideas clearly and coherently in both spoken and written English. Develop the ability to organize your thoughts logically, use appropriate vocabulary and grammar, and convey your message with confidence.</li>\n    <li><strong>Time Management:</strong> Develop effective time management strategies to maximize your efficiency during the exam. Pace yourself appropriately, allocate time for each section based on its weighting, and monitor your progress to ensure completion within the allotted time.</li>\n</ul>\n\n<h5>Conclusion</h5>\n\n<p>\nIn conclusion, the IELTS exam serves as a gateway to immigration opportunities in English-speaking countries around the world. By conquering the fear associated with IELTS and adopting effective study strategies, you can increase your chances of success and achieve your immigration goals. Remember to approach the exam with confidence, perseverance, and a commitment to excellence.\n</p>', 'assets/images/gallery/ielts.jpg');

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
(254, 'GER', 11, 10, '€100,001 and above'),
(255, 'USA', 6, 20, 'Scored 8 and above'),
(256, 'USA', 6, 15, 'Scored 7'),
(257, 'USA', 6, 10, 'Scored 6'),
(258, 'USA', 6, 0, 'Scored 5 or below');

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
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `EvaluationID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ChoiceCountryCode` varchar(10) NOT NULL,
  `ChoiceVisaCategoryID` int(11) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`EvaluationID`, `UserID`, `ChoiceCountryCode`, `ChoiceVisaCategoryID`, `CreatedAt`) VALUES
(1, 7, 'CAN', 1, '2024-03-29 14:49:10'),
(2, 7, 'CAN', 1, '2024-03-29 14:52:07'),
(3, 7, 'USA', 1, '2024-03-29 15:03:16'),
(4, 7, 'USA', 1, '2024-03-29 15:03:37'),
(5, 7, 'USA', 1, '2024-03-29 15:04:00'),
(6, 7, 'AUS', 1, '2024-03-31 23:44:22'),
(7, 7, 'AUS', 1, '2024-03-31 23:45:56'),
(8, 7, 'AUS', 2, '2024-04-05 23:20:41'),
(9, 7, 'GER', 2, '2024-04-05 23:26:07'),
(13, 7, 'USA', 1, '2024-04-29 15:55:44'),
(14, 7, 'USA', 1, '2024-04-29 15:58:25'),
(15, 7, 'USA', 1, '2024-04-29 16:02:53'),
(16, 7, 'USA', 1, '2024-04-29 16:04:09'),
(18, 7, 'USA', 1, '2024-04-29 16:08:40'),
(19, 7, 'USA', 1, '2024-04-29 16:09:52'),
(20, 7, 'USA', 1, '2024-04-29 16:11:10'),
(21, 7, 'USA', 2, '2024-04-29 16:14:18'),
(22, 7, 'USA', 2, '2024-04-29 16:14:39'),
(23, 7, 'USA', 1, '2024-04-29 16:21:41'),
(24, 7, 'USA', 1, '2024-04-29 16:24:59'),
(25, 7, 'GBR', 1, '2024-04-29 16:25:15'),
(26, 7, 'GBR', 1, '2024-04-29 16:26:34'),
(27, 7, 'USA', 1, '2024-04-29 16:31:56'),
(28, 7, 'USA', 1, '2024-04-29 16:33:30'),
(29, 7, 'USA', 1, '2024-04-29 16:37:38'),
(30, 7, 'GBR', 2, '2024-04-29 16:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `immigration_insights`
--

CREATE TABLE `immigration_insights` (
  `immigration_insight_id` int(11) NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `visa_category_id` int(11) NOT NULL,
  `immigration_insight` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `immigration_insights`
--

INSERT INTO `immigration_insights` (`immigration_insight_id`, `country_code`, `visa_category_id`, `immigration_insight`) VALUES
(1, 'USA', 1, '<h1>Immigration Insights for Student Visa for the USA</h1>\n\n<ol>\n  <li><strong>Introduction to Student Visas:</strong> Understanding the process of obtaining a student visa is crucial for international students aspiring to study in the USA.</li>\n\n  <li><strong>Types of Student Visas:</strong> The USA offers different types of student visas, primarily F and M visas, each tailored to specific educational programs and institutions.</li>\n\n  <li><strong>F-1 Visa Overview:</strong> The F-1 visa is for academic students enrolled in full-time programs at accredited educational institutions, including colleges, universities, and language schools.</li>\n\n  <li><strong>M-1 Visa Overview:</strong> The M-1 visa is for vocational students pursuing non-academic or practical training courses at institutions such as technical schools and vocational colleges.</li>\n\n  <li><strong>Eligibility Requirements:</strong> To qualify for a student visa, applicants must have a valid Form I-20 from their chosen institution, proof of financial support, intent to return to their home country after completing their studies, and meet other criteria set by the U.S. Department of State.</li>\n\n  <li><strong>Choosing an Accredited Institution:</strong> It\'s essential to select an accredited educational institution recognized by the U.S. government to ensure eligibility for a student visa.</li>\n\n  <li><strong>Academic Program Selection:</strong> Students should carefully research and select academic programs that align with their educational and career goals, as well as meet the requirements for obtaining a student visa.</li>\n\n  <li><strong>Financial Documentation:</strong> Applicants must provide evidence of sufficient funds to cover tuition fees, living expenses, and other related costs for the duration of their studies in the USA.</li>\n\n  <li><strong>English Proficiency Requirements:</strong> Most academic institutions in the USA require international students to demonstrate proficiency in English through standardized tests such as the TOEFL or IELTS.</li>\n\n  <li><strong>Visa Application Process:</strong> The visa application process typically involves completing the online DS-160 form, scheduling a visa interview at the nearest U.S. embassy or consulate, and paying the required visa application fee.</li>\n\n  <li><strong>Preparing for the Visa Interview:</strong> Applicants should thoroughly prepare for the visa interview by familiarizing themselves with the visa requirements, preparing necessary documents, and practicing interview questions.</li>\n\n  <li><strong>Documents Required for the Interview:</strong> Applicants should bring essential documents to the visa interview, including a valid passport, Form I-20, proof of financial support, academic transcripts, and standardized test scores.</li>\n\n  <li><strong>Visa Interview Tips:</strong> During the visa interview, applicants should remain calm, confident, and honest while answering questions posed by the consular officer, providing clear and concise responses.</li>\n\n  <li><strong>Understanding Visa Denials:</strong> In some cases, visa applications may be denied due to various reasons, such as incomplete documentation, insufficient funds, or failure to demonstrate ties to the home country.</li>\n\n  <li><strong>Appealing a Visa Denial:</strong> If a visa application is denied, applicants have the option to appeal the decision or reapply for a visa after addressing the reasons for the initial denial.</li>\n\n  <li><strong>Maintaining Student Visa Status:</strong> Once in the USA, students must adhere to the conditions of their visa status, including maintaining full-time enrollment, complying with visa regulations, and keeping valid immigration documents.</li>\n\n  <li><strong>Employment Opportunities:</strong> F-1 visa holders may be eligible for limited employment opportunities on-campus or through Optional Practical Training (OPT) programs, providing valuable work experience in their field of study.</li>\n\n  <li><strong>Health Insurance Requirements:</strong> Many academic institutions require international students to have health insurance coverage to access healthcare services while studying in the USA.</li>\n\n  <li><strong>Cultural Adjustment and Support Services:</strong> International students may experience cultural shock and homesickness when adjusting to life in the USA, but most institutions offer support services, including orientation programs, counseling, and cultural clubs.</li>\n\n  <li><strong>Safety and Security:</strong> Students should familiarize themselves with safety precautions and emergency procedures in the USA, including campus security measures and resources for reporting incidents.</li>\n\n  <li><strong>Academic Expectations:</strong> Academic standards and expectations may vary among institutions, so students should be prepared to adapt to different teaching styles, coursework demands, and evaluation methods.</li>\n\n  <li><strong>Networking and Social Opportunities:</strong> Engaging in extracurricular activities, joining student organizations, and networking with peers can enhance the overall student experience and build valuable connections.</li>\n\n  <li><strong>Traveling Outside the USA:</strong> Students should be aware of the regulations and procedures for traveling outside the USA during their studies, including maintaining valid visa status and obtaining necessary travel documents.</li>\n\n  <li><strong>Graduation and Post-Graduation Options:</strong> Upon completing their studies, students may explore post-graduation options such as pursuing further education, applying for employment-based visas, or returning to their home country.</li>\n\n  <li><strong>Applying for Optional Practical Training (OPT):</strong> F-1 visa holders may apply for OPT, which allows them to work in their field of study for up to 12 months after completing their academic program.</li>\n\n  <li><strong>Transitioning to Employment-Based Visas:</strong> Students interested in pursuing long-term employment in the USA may explore options for transitioning from student visas to employment-based visas, such as the H-1B visa.</li>\n\n  <li><strong>Maintaining Legal Status:</strong> It\'s essential for students to maintain legal status in the USA by complying with visa regulations, timely filing required documents, and seeking guidance from designated school officials (DSOs) when necessary.</li>\n\n  <li><strong>Immigration Updates and Policy Changes:</strong> Students should stay informed about immigration updates, policy changes, and regulatory developments that may affect their visa status or future plans.</li>\n\n  <li><strong>Community Engagement and Integration:</strong> Getting involved in the local community, volunteering, and participating in cultural exchange activities can enrich the student experience and foster a sense of belonging in the USA.</li>\n\n  <li><strong>Seeking Support and Resources:</strong> Lastly, students should utilize available resources, such as international student offices, academic advisors, and legal assistance, to navigate challenges, address concerns, and ensure a successful academic journey in the USA.</li>\n</ol>'),
(2, 'USA', 2, '<h1>Immigration Insights for Work Visas for the USA</h1>\n\n<ol>\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is essential for foreign nationals aspiring to work legally in the USA, whether temporarily or permanently.</li>\n\n  <li><strong>Types of Work Visas:</strong> The USA offers various types of work visas, each designed for specific employment categories and eligibility criteria, including H-1B, L-1, O-1, TN, and EB visas.</li>\n\n  <li><strong>H-1B Visa Overview:</strong> The H-1B visa is one of the most sought-after work visas for skilled professionals, particularly in specialized fields such as IT, engineering, healthcare, and finance.</li>\n\n  <li><strong>L-1 Visa Overview:</strong> The L-1 visa is for intracompany transferees, allowing multinational companies to transfer employees from overseas offices to the USA for temporary assignments.</li>\n\n  <li><strong>O-1 Visa Overview:</strong> The O-1 visa is for individuals with extraordinary ability or achievement in fields such as science, arts, education, business, or athletics, demonstrating national or international acclaim.</li>\n\n  <li><strong>TN Visa Overview:</strong> The TN visa is available to Canadian and Mexican citizens under the provisions of the North American Free Trade Agreement (NAFTA), allowing for temporary employment in specific professional occupations.</li>\n\n  <li><strong>EB Visa Overview:</strong> The EB visa category encompasses employment-based immigrant visas, providing a pathway to permanent residency (green card) for individuals with specific skills, qualifications, or job offers in the USA.</li>\n\n  <li><strong>Employer Sponsorship:</strong> Most work visas require sponsorship from a U.S. employer, who must petition on behalf of the foreign worker and demonstrate the need for their skills or expertise.</li>\n\n  <li><strong>Labor Certification:</strong> For some employment-based visas, employers may need to obtain labor certification from the U.S. Department of Labor to demonstrate that no qualified U.S. workers are available for the position.</li>\n\n  <li><strong>Job Offer Requirements:</strong> Work visa applicants must have a valid job offer from a U.S. employer who is willing to sponsor their visa application and comply with relevant immigration regulations.</li>\n\n  <li><strong>Specialty Occupation Criteria:</strong> The H-1B visa is specifically for positions that require specialized knowledge, skills, or education, typically in fields such as science, technology, engineering, or mathematics (STEM).</li>\n\n  <li><strong>Intracompany Transfer Requirements:</strong> L-1 visa applicants must have been employed by a qualifying multinational company for a certain period and be transferring to a related office in the USA in an executive, managerial, or specialized knowledge capacity.</li>\n\n  <li><strong>Extraordinary Ability Criteria:</strong> O-1 visa applicants must demonstrate extraordinary ability or achievement in their field through sustained national or international acclaim, as evidenced by awards, publications, recognition, or professional achievements.</li>\n\n  <li><strong>NAFTA Professional Categories:</strong> TN visa applicants must qualify for one of the designated professional occupations listed under the NAFTA treaty, meeting specific educational and professional requirements.</li>\n\n  <li><strong>Employment-Based Preference Categories:</strong> EB visa applicants are categorized into different preference categories based on factors such as priority date, job qualifications, and country of origin, with priority given to individuals with higher skill levels or exceptional abilities.</li>\n\n  <li><strong>Visa Application Process:</strong> The visa application process typically involves submitting a petition or application to U.S. Citizenship and Immigration Services (USCIS), attending a visa interview at a U.S. embassy or consulate, and providing supporting documents.</li>\n\n  <li><strong>Priority Processing and Premium Processing:</strong> Some work visas, such as the H-1B visa, offer options for priority processing or premium processing for an additional fee, expediting the adjudication of the visa application.</li>\n\n  <li><strong>Visa Interview Preparation:</strong> Applicants should thoroughly prepare for the visa interview by reviewing visa requirements, gathering necessary documents, and practicing interview questions to demonstrate eligibility and qualifications.</li>\n\n  <li><strong>Documentary Requirements:</strong> Applicants must provide various documents to support their visa application, including a valid passport, job offer letter, educational credentials, professional certifications, and evidence of qualifications.</li>\n\n  <li><strong>Prevailing Wage Determination:</strong> Employers sponsoring H-1B visa holders must obtain a prevailing wage determination from the Department of Labor to ensure that the foreign worker is offered a salary commensurate with prevailing wage rates for similar positions in the same geographic area.</li>\n\n  <li><strong>Maintaining Visa Status:</strong> Once in the USA, visa holders must comply with visa conditions, such as maintaining employment with the sponsoring employer, reporting changes in employment status, and avoiding unauthorized employment.</li>\n\n  <li><strong>Dependent Visa Options:</strong> Spouses and unmarried children under 21 of work visa holders may be eligible for dependent visas (H-4, L-2, O-3, etc.), allowing them to accompany the primary visa holder to the USA and, in some cases, obtain authorization to work or study.</li>\n\n  <li><strong>Renewing or Extending Work Visas:</strong> Work visas are typically granted for a specific period, after which they may be renewed or extended, subject to meeting eligibility criteria, maintaining employment status, and complying with visa regulations.</li>\n\n  <li><strong>Change of Employer or Visa Category:</strong> In some cases, work visa holders may seek to change employers or transition to a different visa category, requiring approval from USCIS and compliance with relevant immigration laws.</li>\n\n  <li><strong>Dual Intent and Permanent Residency:</strong> Some work visas, such as the H-1B and L-1 visas, allow for dual intent, meaning that visa holders may pursue permanent residency (green card) while maintaining their nonimmigrant status in the USA.</li>\n\n  <li><strong>Green Card Sponsorship:</strong> Employers may sponsor eligible employees for green cards through employment-based immigrant visa categories (EB-1, EB-2, EB-3, etc.), providing a pathway to permanent residency and eventual citizenship.</li>\n\n  <li><strong>Priority Workers and National Interest Waivers:</strong> Certain employment-based green card categories, such as EB-1 for priority workers and EB-2 for individuals with advanced degrees or exceptional abilities, may qualify for national interest waivers, waiving the requirement for labor certification.</li>\n\n  <li><strong>Entrepreneurial Opportunities:</strong> Foreign entrepreneurs and investors may explore visa options such as the EB-5 Immigrant Investor Program, which provides a pathway to permanent residency through investment in U.S. commercial enterprises that create jobs.</li>\n\n  <li><strong>Immigration Policy Updates:</strong> It\'s essential for visa applicants to stay informed about changes in immigration policies, regulations, and visa processing procedures that may affect their eligibility or application process.</li>\n\n  <li><strong>Seeking Legal Advice and Assistance:</strong> Given the complexities of U.S. immigration laws and procedures, individuals seeking work visas are encouraged to seek legal advice and assistance from qualified immigration attorneys or consultants to navigate the process effectively and maximize their chances of success.</li>\n</ol>'),
(3, 'AUS', 1, '<h1>Immigration Insights for Student Visa for Australia</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Student Visas:</strong> Obtaining a student visa is essential for international students planning to study in Australia.</li>\r\n\r\n  <li><strong>Types of Student Visas:</strong> Australia offers several types of student visas, primarily Subclass 500 for full-time study at registered educational institutions.</li>\r\n\r\n  <li><strong>Subclass 500 Visa Overview:</strong> The Subclass 500 visa is for students enrolled in primary, secondary, or tertiary education courses, including language courses and vocational training.</li>\r\n\r\n  <li><strong>Eligibility Requirements:</strong> To qualify for a Subclass 500 visa, applicants must have a confirmed offer of enrollment from an Australian educational institution, sufficient funds to cover living expenses, health insurance coverage, and meet health and character requirements.</li>\r\n\r\n  <li><strong>Choosing an Institution:</strong> It\'s crucial to select a registered Australian educational institution recognized by the government to ensure visa eligibility.</li>\r\n\r\n  <li><strong>Course Selection:</strong> Students should choose courses that align with their academic goals and meet the requirements for obtaining a student visa.</li>\r\n\r\n  <li><strong>Financial Capacity:</strong> Applicants must demonstrate sufficient funds to cover tuition fees, living expenses, and other related costs for the duration of their stay in Australia.</li>\r\n\r\n  <li><strong>English Proficiency:</strong> Most Australian institutions require international students to demonstrate proficiency in English through standardized tests such as IELTS, TOEFL, or PTE.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves completing the online application form, providing required documents, undergoing a health examination, and attending a visa interview if necessary.</li>\r\n\r\n  <li><strong>Document Checklist:</strong> Essential documents for the visa application include a valid passport, Confirmation of Enrollment (CoE) from the educational institution, proof of financial capacity, health insurance, and English proficiency test results.</li>\r\n\r\n  <li><strong>Health Insurance Requirement:</strong> International students must have Overseas Student Health Cover (OSHC) to cover medical expenses while studying in Australia.</li>\r\n\r\n  <li><strong>Visa Application Fees:</strong> Applicants are required to pay the visa application fee, which varies depending on the subclass of the visa and the applicant\'s circumstances.</li>\r\n\r\n  <li><strong>Biometric Data Collection:</strong> Some applicants may need to provide biometric data as part of the visa application process, which includes fingerprints and a photograph.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for student visas vary depending on factors such as the applicant\'s nationality, the volume of applications, and the completeness of documentation.</li>\r\n\r\n  <li><strong>Visa Conditions:</strong> Student visa holders must comply with visa conditions, including maintaining enrollment in a registered course, making satisfactory academic progress, and adhering to work limitations.</li>\r\n\r\n  <li><strong>Work Rights:</strong> Subclass 500 visa holders are generally permitted to work up to 40 hours per fortnight during the academic session and full-time during scheduled breaks.</li>\r\n\r\n  <li><strong>Post-Study Work Opportunities:</strong> Upon completing their studies, international students may be eligible for post-study work visas, providing an opportunity to gain work experience in Australia.</li>\r\n\r\n  <li><strong>Graduate Visa Options:</strong> The Temporary Graduate visa (Subclass 485) allows international graduates to work, study, or travel in Australia temporarily after completing their studies.</li>\r\n\r\n  <li><strong>Pathways to Permanent Residency:</strong> Some student visa holders may be eligible to apply for permanent residency through skilled migration pathways, employer sponsorship, or state nomination programs.</li>\r\n\r\n  <li><strong>Health and Safety:</strong> International students should familiarize themselves with Australia\'s health and safety regulations, access healthcare services through OSHC, and stay informed about emergency procedures.</li>\r\n\r\n  <li><strong>Accommodation Options:</strong> Students can choose from various accommodation options in Australia, including on-campus residences, shared apartments, homestays, or private rentals.</li>\r\n\r\n  <li><strong>Cultural Adjustment:</strong> Adjusting to a new culture and environment may take time, but international students can access support services, participate in orientation programs, and join student clubs to facilitate integration.</li>\r\n\r\n  <li><strong>Employment Rights and Protections:</strong> International students are protected by Australian workplace laws and entitled to fair treatment in the workplace, including minimum wage rates and workplace health and safety standards.</li>\r\n\r\n  <li><strong>Community Engagement:</strong> Engaging with the local community, participating in cultural events, and volunteering can enrich the student experience and foster cross-cultural understanding.</li>\r\n</ol>'),
(4, 'AUS', 2, '<h1>Immigration Insights for Work Visa for Australia</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is crucial for foreign nationals aspiring to work legally in Australia, whether temporarily or permanently.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> Australia offers various types of work visas, including the Subclass 482 (Temporary Skill Shortage), Subclass 186 (Employer Nomination Scheme), Subclass 189 (Skilled Independent), and Subclass 494 (Skilled Employer-Sponsored Regional) visas.</li>\r\n\r\n  <li><strong>Subclass 482 Visa Overview:</strong> The Subclass 482 visa, also known as the Temporary Skill Shortage (TSS) visa, allows skilled workers to live and work in Australia for up to four years, sponsored by an approved employer.</li>\r\n\r\n  <li><strong>Subclass 186 Visa Overview:</strong> The Subclass 186 visa, known as the Employer Nomination Scheme (ENS), is a permanent residency visa that enables skilled workers nominated by their employer to live and work in Australia.</li>\r\n\r\n  <li><strong>Subclass 189 Visa Overview:</strong> The Subclass 189 visa, also called the Skilled Independent visa, is a points-based visa for skilled workers who are not sponsored by an employer or nominated by a state or territory government.</li>\r\n\r\n  <li><strong>Subclass 494 Visa Overview:</strong> The Subclass 494 visa is a provisional visa for skilled workers sponsored by an employer in regional Australia, offering a pathway to permanent residency through the Subclass 191 visa.</li>\r\n\r\n  <li><strong>Employer Sponsorship:</strong> Most work visas in Australia require sponsorship from an approved employer who must nominate the foreign worker for the specific visa subclass.</li>\r\n\r\n  <li><strong>Skills Assessment:</strong> Work visa applicants may need to undergo a skills assessment by a relevant assessing authority to demonstrate that their qualifications and experience meet Australian standards.</li>\r\n\r\n  <li><strong>English Language Proficiency:</strong> Depending on the visa subclass, applicants may need to demonstrate proficiency in English through standardized tests such as IELTS or achieve a specified score in the English language proficiency test.</li>\r\n\r\n  <li><strong>Occupation Lists:</strong> Work visas often require applicants to nominate an occupation listed on the relevant skilled occupation lists, which outline occupations in demand in Australia.</li>\r\n\r\n  <li><strong>Regional Sponsorship:</strong> Some work visas, such as the Subclass 494 visa, require sponsorship from an employer located in regional Australia, designated by specific postcodes.</li>\r\n\r\n  <li><strong>Health and Character Requirements:</strong> Applicants for work visas must meet health and character requirements, including undergoing medical examinations and providing police clearance certificates.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves submitting an Expression of Interest (EOI) through SkillSelect, receiving an invitation to apply, lodging the visa application, and providing supporting documents.</li>\r\n\r\n  <li><strong>Priority Processing:</strong> Some work visas offer priority processing for certain occupations in high demand or regional areas with skill shortages.</li>\r\n\r\n  <li><strong>Visa Application Fees:</strong> Applicants are required to pay the visa application fee, which varies depending on the visa subclass and the applicant\'s circumstances.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> Work visa holders in Australia are generally required to maintain adequate health insurance coverage for themselves and any accompanying family members.</li>\r\n\r\n  <li><strong>Work Rights:</strong> Work visa holders are entitled to work in Australia for the sponsoring employer and in the occupation specified in their visa application.</li>\r\n\r\n  <li><strong>Family Members:</strong> Some work visas allow visa holders to include family members, such as spouses and dependent children, who can live, work, and study in Australia.</li>\r\n\r\n  <li><strong>Pathways to Permanent Residency:</strong> Many work visas in Australia offer pathways to permanent residency, allowing visa holders to settle in Australia permanently after meeting specified requirements.</li>\r\n\r\n  <li><strong>Regional Pathways:</strong> Work visa holders sponsored by employers in regional areas may have access to accelerated pathways to permanent residency through regional migration schemes.</li>\r\n\r\n  <li><strong>Employer Obligations:</strong> Employers sponsoring foreign workers for work visas have certain obligations, including providing employment in accordance with Australian workplace laws and cooperating with immigration authorities.</li>\r\n\r\n  <li><strong>Changing Employers:</strong> Some work visas allow visa holders to change employers under certain circumstances, provided the new employer meets sponsorship and nomination requirements.</li>\r\n\r\n  <li><strong>Renewing or Extending Visas:</strong> Work visa holders may be eligible to renew or extend their visas, depending on the visa subclass and individual circumstances.</li>\r\n\r\n  <li><strong>Permanent Residency Options:</strong> Work visa holders may explore various pathways to permanent residency in Australia, such as employer nomination, state or territory nomination, or skilled migration programs.</li>\r\n\r\n  <li><strong>Points-Based Migration:</strong> Skilled migration programs, such as the Subclass 189 visa, are points-based, with points awarded for factors such as age, English language proficiency, qualifications, and work experience.</li>\r\n\r\n  <li><strong>State Nomination:</strong> Some work visas require state or territory nomination, with each state and territory having its own skilled occupation lists and eligibility criteria.</li>\r\n\r\n  <li><strong>Visa Conditions:</strong> Work visas in Australia come with specific conditions that visa holders must comply with, including restrictions on work, study, and travel.</li>\r\n\r\n  <li><strong>Regional Development:</strong> Work visas sponsored by employers in regional areas contribute to regional development and address skill shortages in priority industries.</li>\r\n\r\n  <li><strong>Community Contributions:</strong> Work visa holders play a vital role in Australia\'s economy and contribute to the country\'s cultural diversity, innovation, and productivity.</li>\r\n\r\n  <li><strong>Immigration Policy Updates:</strong> It\'s important for visa applicants to stay informed about changes in immigration policies, regulations, and visa processing procedures that may affect their eligibility or application process.</li>\r\n\r\n  <li><strong>Seeking Professional Advice:</strong> Given the complexity of Australian immigration laws and procedures, individuals applying for work visas are advised to seek professional advice and assistance from registered migration agents or immigration lawyers.</li>\r\n</ol>'),
(5, 'CAN', 2, '<h1>Immigration Insights for Work Visa for Canada</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is crucial for foreign nationals aspiring to work legally in Canada, whether temporarily or permanently.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> Canada offers various types of work visas, including the Temporary Foreign Worker Program (TFWP), International Mobility Program (IMP), Provincial Nominee Program (PNP), and Express Entry system.</li>\r\n\r\n  <li><strong>TFWP Overview:</strong> The Temporary Foreign Worker Program allows Canadian employers to hire foreign workers to fill temporary labor shortages in specific occupations.</li>\r\n\r\n  <li><strong>IMP Overview:</strong> The International Mobility Program facilitates the entry of foreign workers into Canada for temporary employment purposes under various agreements and arrangements.</li>\r\n\r\n  <li><strong>PNP Overview:</strong> The Provincial Nominee Program enables Canadian provinces and territories to nominate foreign workers with skills and experience required for their local labor markets.</li>\r\n\r\n  <li><strong>Express Entry Overview:</strong> The Express Entry system is a points-based immigration system that manages applications for permanent residency under the Federal Skilled Worker Program, Federal Skilled Trades Program, and Canadian Experience Class.</li>\r\n\r\n  <li><strong>Job Offer Requirement:</strong> Most work visas in Canada require a valid job offer from a Canadian employer who is authorized to hire foreign workers.</li>\r\n\r\n  <li><strong>Labor Market Impact Assessment (LMIA):</strong> Employers may need to obtain an LMIA from Employment and Social Development Canada (ESDC) to demonstrate the need to hire a foreign worker due to a labor shortage.</li>\r\n\r\n  <li><strong>Exemptions from LMIA:</strong> Some work visas, such as those under the IMP, may be exempt from the LMIA requirement based on international agreements, reciprocal agreements, or specific categories.</li>\r\n\r\n  <li><strong>Work Permit Application:</strong> Once the job offer and LMIA (if required) are secured, the foreign worker can apply for a work permit from Immigration, Refugees, and Citizenship Canada (IRCC).</li>\r\n\r\n  <li><strong>Duration of Work Permits:</strong> Work permits in Canada are typically issued for the duration of the job offer, up to a maximum of two years, with options for renewal or extension.</li>\r\n\r\n  <li><strong>Spousal Work Permit:</strong> Spouses or common-law partners of work permit holders may be eligible for an open work permit, allowing them to work for any Canadian employer.</li>\r\n\r\n  <li><strong>Post-Graduation Work Permit:</strong> International students who have graduated from eligible Canadian institutions may apply for a post-graduation work permit, allowing them to work in Canada for up to three years.</li>\r\n\r\n  <li><strong>Provincial Nominee Programs:</strong> Each Canadian province and territory has its own PNP, offering pathways to permanent residency for foreign workers with skills and experience in demand.</li>\r\n\r\n  <li><strong>Express Entry System:</strong> The Express Entry system is a streamlined process for skilled workers to immigrate to Canada as permanent residents based on factors such as age, education, work experience, and language proficiency.</li>\r\n\r\n  <li><strong>Comprehensive Ranking System (CRS):</strong> Applicants in the Express Entry pool are ranked based on the CRS score, which considers various factors such as age, education, work experience, language proficiency, and adaptability.</li>\r\n\r\n  <li><strong>Invitation to Apply (ITA):</strong> Candidates with high CRS scores may receive an ITA to apply for permanent residency through Express Entry.</li>\r\n\r\n  <li><strong>LMIA Exemption Codes:</strong> Certain work permit categories are exempt from the LMIA requirement under specific exemption codes, such as NAFTA, intra-company transfers, international agreements, and reciprocal agreements.</li>\r\n\r\n  <li><strong>Spousal Sponsorship:</strong> Canadian citizens and permanent residents can sponsor their spouses or common-law partners for permanent residency, allowing them to work and live in Canada.</li>\r\n\r\n  <li><strong>Open Work Permits:</strong> Some work permit categories, such as those for spouses or common-law partners of skilled workers or international students, are issued as open work permits, allowing the holder to work for any Canadian employer.</li>\r\n\r\n  <li><strong>Canadian Experience Class:</strong> The Canadian Experience Class is a pathway to permanent residency for individuals with skilled work experience in Canada, providing a route to immigration for temporary foreign workers and international graduates.</li>\r\n\r\n  <li><strong>Provincial Nomination:</strong> Provincial Nominee Programs allow provinces and territories to nominate foreign workers with skills and experience needed in their labor markets for permanent residency.</li>\r\n\r\n  <li><strong>Quebec Skilled Worker Program:</strong> Quebec has its own immigration programs, including the Quebec Skilled Worker Program (QSWP), which selects skilled workers for permanent residency based on factors such as education, work experience, language proficiency, and adaptability.</li>\r\n\r\n  <li><strong>Family Reunification:</strong> Canada prioritizes family reunification, allowing Canadian citizens and permanent residents to sponsor their family members, including spouses, parents, grandparents, and dependent children, for permanent residency.</li>\r\n\r\n  <li><strong>Work Permit Extensions:</strong> Work permit holders may be eligible to extend their permits before they expire, provided they continue to meet eligibility criteria and their job offer remains valid.</li>\r\n\r\n  <li><strong>Work Visa Processing Times:</strong> Processing times for work visas in Canada vary depending on factors such as the visa category, country of application, and volume of applications.</li>\r\n\r\n  <li><strong>Language Proficiency Requirements:</strong> Depending on the visa category, applicants may need to demonstrate proficiency in English or French through standardized language tests such as IELTS or TEF.</li>\r\n\r\n  <li><strong>Consulting Immigration Professionals:</strong> Due to the complexity of Canadian immigration laws and procedures, individuals seeking work visas are advised to consult immigration professionals, such as licensed immigration consultants or lawyers, for guidance and assistance.</li>\r\n</ol>'),
(6, 'CAN', 1, '<h1>Immigration Insights for Study Visa for Canada</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Study Visas:</strong> Obtaining a study visa is essential for international students aspiring to pursue higher education in Canada.</li>\r\n\r\n  <li><strong>Types of Study Visas:</strong> Canada offers various types of study visas, including the Study Permit for full-time academic programs, the Student Direct Stream (SDS) for applicants from certain countries, and the Post-Graduation Work Permit (PGWP) for eligible graduates.</li>\r\n\r\n  <li><strong>Study Permit Overview:</strong> The Study Permit allows international students to study full-time at designated learning institutions (DLIs) in Canada for the duration of their academic program.</li>\r\n\r\n  <li><strong>Student Direct Stream (SDS):</strong> The SDS is an expedited study permit processing program available to applicants from select countries who meet specified eligibility criteria, including English or French language proficiency and upfront medical examinations.</li>\r\n\r\n  <li><strong>Post-Graduation Work Permit (PGWP):</strong> The PGWP allows eligible international graduates of Canadian institutions to work in Canada for up to three years after completing their studies, providing valuable post-graduation work experience.</li>\r\n\r\n  <li><strong>Eligibility Requirements:</strong> To qualify for a study visa, applicants must have a valid Letter of Acceptance from a DLI, demonstrate sufficient funds to cover tuition fees and living expenses, and meet other requirements set by Immigration, Refugees, and Citizenship Canada (IRCC).</li>\r\n\r\n  <li><strong>Designated Learning Institutions (DLIs):</strong> International students must be enrolled at a DLI, which is a school, college, or university approved by a provincial or territorial government to host international students.</li>\r\n\r\n  <li><strong>Proof of Financial Support:</strong> Applicants must provide evidence of adequate funds to cover tuition fees, living expenses, and return transportation to their home country.</li>\r\n\r\n  <li><strong>English or French Language Proficiency:</strong> Depending on the language of instruction, applicants may need to demonstrate proficiency in English or French through standardized tests such as IELTS, TOEFL, or DELF.</li>\r\n\r\n  <li><strong>Biometrics:</strong> Applicants from certain countries may be required to provide biometric data (fingerprints and photo) as part of the visa application process.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process typically involves submitting an online application, paying the application fee, providing supporting documents, and attending a biometrics appointment (if required).</li>\r\n\r\n  <li><strong>Study Visa Processing Times:</strong> Processing times for study visas vary depending on factors such as the applicant\'s country of residence, the volume of applications, and the time of year.</li>\r\n\r\n  <li><strong>Medical Examination:</strong> Some study visa applicants may need to undergo a medical examination to ensure they meet health requirements for entry into Canada.</li>\r\n\r\n  <li><strong>Conditional Acceptance:</strong> In some cases, international students may receive conditional acceptance from DLIs, contingent upon meeting specific academic or language proficiency requirements.</li>\r\n\r\n  <li><strong>Work Opportunities:</strong> Study permit holders in Canada may be eligible to work part-time during their studies and full-time during scheduled breaks, providing opportunities to gain work experience and supplement their finances.</li>\r\n\r\n  <li><strong>Co-op and Internship Programs:</strong> Many Canadian institutions offer co-op and internship programs that allow international students to gain practical work experience in their field of study while completing their academic program.</li>\r\n\r\n  <li><strong>Post-Graduation Work Permit (PGWP):</strong> The PGWP allows international graduates to work in Canada after completing their studies, providing valuable work experience and pathways to permanent residency.</li>\r\n\r\n  <li><strong>Immigration Pathways:</strong> International students may explore various immigration pathways to remain in Canada permanently, including provincial nominee programs, Express Entry, and sponsorship programs.</li>\r\n\r\n  <li><strong>Permanent Residency:</strong> Graduates with Canadian work experience may be eligible to apply for permanent residency through programs such as the Canadian Experience Class (CEC) or Provincial Nominee Programs (PNPs).</li>\r\n\r\n  <li><strong>Family Sponsorship:</strong> Permanent residents and citizens of Canada may sponsor their family members, including spouses, common-law partners, and dependent children, to join them in Canada.</li>\r\n\r\n  <li><strong>Language and Cultural Integration:</strong> International students have the opportunity to immerse themselves in Canadian culture, improve their language skills, and build networks with local communities.</li>\r\n\r\n  <li><strong>Student Support Services:</strong> Canadian institutions provide a range of support services to help international students adjust to life in Canada, including orientation programs, academic advising, counseling services, and cultural activities.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> International students in Canada are required to have health insurance coverage to access medical services during their stay, either through provincial health plans or private insurance providers.</li>\r\n\r\n  <li><strong>Community Engagement:</strong> Getting involved in campus clubs, volunteer activities, and community events can enrich the student experience and foster connections with peers and local residents.</li>\r\n\r\n  <li><strong>Visa Renewal and Extensions:</strong> Study permit holders may be eligible to renew or extend their permits if they wish to continue their studies, provided they meet all requirements and maintain satisfactory academic progress.</li>\r\n\r\n  <li><strong>Graduation and Employment:</strong> After completing their studies, international graduates may explore employment opportunities in Canada, either through the PGWP, provincial nominee programs, or other immigration pathways.</li>\r\n\r\n  <li><strong>Pathways to Citizenship:</strong> Permanent residents of Canada may eventually be eligible to apply for Canadian citizenship, allowing them to enjoy the rights and privileges of citizenship, including the ability to vote and hold a Canadian passport.</li>\r\n\r\n  <li><strong>Immigration Updates:</strong> International students should stay informed about changes in Canadian immigration policies, regulations, and procedures that may affect their visa status or future plans.</li>\r\n\r\n  <li><strong>Seeking Legal Advice:</strong> Given the complexity of Canadian immigration laws, international students are encouraged to seek advice and assistance from qualified immigration professionals, such as consultants or lawyers, to navigate the process effectively.</li>\r\n</ol>'),
(7, 'FRA', 1, '<h1>Immigration Insights for Study Visa for France</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Study Visas:</strong> Obtaining a study visa is essential for international students aspiring to pursue higher education in France.</li>\r\n\r\n  <li><strong>Types of Study Visas:</strong> France offers various types of study visas, including the Short-Stay Visa (Visa de court séjour) for programs lasting less than 90 days and the Long-Stay Visa (Visa de long séjour) for programs exceeding 90 days.</li>\r\n\r\n  <li><strong>Student Visa (Visa étudiant) Overview:</strong> The Student Visa allows international students to study in France for programs lasting longer than 90 days, including academic programs, language courses, and internships.</li>\r\n\r\n  <li><strong>Eligibility Requirements:</strong> To qualify for a Student Visa, applicants must have been accepted into a recognized educational institution in France, demonstrate sufficient funds to cover living expenses, and obtain health insurance coverage.</li>\r\n\r\n  <li><strong>Admissions Process:</strong> International students must apply directly to their chosen French institution and receive a letter of acceptance before applying for a Student Visa.</li>\r\n\r\n  <li><strong>Financial Requirements:</strong> Applicants must provide evidence of financial resources to cover tuition fees, accommodation, food, transportation, and other living expenses during their stay in France.</li>\r\n\r\n  <li><strong>Language Proficiency:</strong> Depending on the language of instruction, applicants may need to demonstrate proficiency in French through standardized tests such as DELF or DALF.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves completing the visa application form, scheduling an appointment at the French consulate or embassy, paying the visa fee, and providing supporting documents.</li>\r\n\r\n  <li><strong>Supporting Documents:</strong> Required documents for a Student Visa application may include a valid passport, letter of acceptance from the educational institution, proof of accommodation, financial statements, and health insurance coverage.</li>\r\n\r\n  <li><strong>Visa Interview:</strong> Some applicants may be required to attend a visa interview at the French consulate or embassy to discuss their study plans and visa application.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for Student Visas vary depending on the applicant\'s country of residence and the volume of applications, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> All international students in France are required to have health insurance coverage, either through a private insurance provider or the French social security system.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in France, students with a Long-Stay Student Visa must apply for a residence permit (titre de séjour) at the local préfecture within the first few months of their stay.</li>\r\n\r\n  <li><strong>Part-Time Work:</strong> Students with a valid Long-Stay Student Visa are allowed to work part-time in France, typically up to 20 hours per week during the academic year and full-time during school holidays.</li>\r\n\r\n  <li><strong>Internship Opportunities:</strong> Many educational programs in France include internship components, providing students with valuable practical experience in their field of study.</li>\r\n\r\n  <li><strong>Language and Cultural Immersion:</strong> Studying in France offers international students the opportunity to immerse themselves in French language and culture, enhancing their language skills and cultural awareness.</li>\r\n\r\n  <li><strong>Academic Excellence:</strong> France is known for its prestigious universities, research institutions, and academic programs, attracting students from around the world seeking quality education.</li>\r\n\r\n  <li><strong>Student Support Services:</strong> French universities and colleges provide a range of support services to help international students adjust to academic and cultural life in France, including orientation programs, academic advising, and student clubs.</li>\r\n\r\n  <li><strong>Travel Opportunities:</strong> France\'s central location in Europe allows students to easily travel to neighboring countries and explore diverse cultures, languages, and landscapes during their study breaks.</li>\r\n\r\n  <li><strong>Student Discounts:</strong> International students in France are eligible for various discounts on transportation, cultural events, museums, and entertainment venues with a valid student ID.</li>\r\n\r\n  <li><strong>Research Opportunities:</strong> France is a hub for scientific research and innovation, offering students opportunities to collaborate with leading researchers and participate in cutting-edge projects.</li>\r\n\r\n  <li><strong>Post-Graduation Options:</strong> After completing their studies, international students may explore options for extending their stay in France through post-graduate studies, internships, or employment opportunities.</li>\r\n\r\n  <li><strong>Pathways to Permanent Residency:</strong> Graduates of French institutions may be eligible to apply for permanent residency in France through various immigration pathways, such as the Talent Passport or Family Reunification.</li>\r\n\r\n  <li><strong>Language Courses:</strong> International students can take advantage of language courses offered in France to improve their French language skills and enhance their academic and professional prospects.</li>\r\n\r\n  <li><strong>Cultural Activities:</strong> France offers a rich cultural heritage with numerous museums, art galleries, theaters, festivals, and events that international students can explore and enjoy during their stay.</li>\r\n\r\n  <li><strong>Networking Opportunities:</strong> Studying in France allows students to build a global network of contacts and connections, both within academia and industry, which can be valuable for future career opportunities.</li>\r\n\r\n  <li><strong>Community Engagement:</strong> Getting involved in student organizations, volunteer projects, and community initiatives enables international students to contribute to French society and make a positive impact.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> International students must comply with French immigration laws and regulations throughout their stay, including maintaining valid visa and residence permit documentation.</li>\r\n\r\n  <li><strong>Consulting Immigration Experts:</strong> Due to the complexities of French immigration procedures, international students are advised to seek guidance from immigration experts or advisors to navigate the visa application and residence permit process effectively.</li>\r\n</ol>');
INSERT INTO `immigration_insights` (`immigration_insight_id`, `country_code`, `visa_category_id`, `immigration_insight`) VALUES
(8, 'FRA', 2, '<h1>Immigration Insights for Work Visa for France</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is essential for foreign nationals aspiring to work legally in France, whether temporarily or permanently.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> France offers various types of work visas, including the Temporary Work Visa (Visa de travail temporaire) for short-term employment, the Long-Stay Work Visa (Visa de long séjour pour travailleur temporaire) for longer assignments, and the EU Blue Card for highly skilled workers.</li>\r\n\r\n  <li><strong>Temporary Work Visa Overview:</strong> The Temporary Work Visa allows foreign workers to stay in France for up to 12 months for temporary employment contracts, such as seasonal work or specific projects.</li>\r\n\r\n  <li><strong>Long-Stay Work Visa Overview:</strong> The Long-Stay Work Visa is suitable for foreign workers employed in France for longer periods, typically exceeding 12 months, and may be renewable depending on the employment contract.</li>\r\n\r\n  <li><strong>EU Blue Card Overview:</strong> The EU Blue Card is a residence and work permit for highly skilled non-EU nationals, offering a pathway to long-term residency and employment in France and other EU member states.</li>\r\n\r\n  <li><strong>Employer Sponsorship:</strong> Most work visas in France require sponsorship from a French employer, who must demonstrate the need to hire a foreign worker and comply with relevant immigration regulations.</li>\r\n\r\n  <li><strong>Job Offer Requirement:</strong> Applicants for work visas must have a valid job offer from a French employer detailing the terms of employment, including job responsibilities, salary, and duration of the contract.</li>\r\n\r\n  <li><strong>Skills and Qualifications:</strong> Work visa applicants must possess the skills, qualifications, and experience required for the job position, as specified by the French employer and immigration authorities.</li>\r\n\r\n  <li><strong>French Language Proficiency:</strong> Depending on the nature of the job and employer requirements, applicants may need to demonstrate proficiency in French through language tests such as DELF or DALF.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves submitting an application to the French consulate or embassy, providing supporting documents, attending an interview (if required), and paying the visa fee.</li>\r\n\r\n  <li><strong>Supporting Documents:</strong> Required documents for a work visa application may include a valid passport, job offer letter, educational credentials, professional certifications, and proof of accommodation.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> Work visa holders in France are required to have health insurance coverage, either through a private insurance provider or the French social security system.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in France, work visa holders must apply for a residence permit (titre de séjour) at the local préfecture within the first few months of their stay.</li>\r\n\r\n  <li><strong>Renewal and Extension:</strong> Work visas in France may be renewable or extendable depending on the terms of the employment contract, changes in employment status, and compliance with visa regulations.</li>\r\n\r\n  <li><strong>Family Reunification:</strong> Work visa holders in France may be eligible to sponsor their family members, including spouses and dependent children, for family reunification and residency.</li>\r\n\r\n  <li><strong>Integration and Cultural Adaptation:</strong> Foreign workers in France are encouraged to integrate into French society, learn the language, and adapt to the local culture and customs.</li>\r\n\r\n  <li><strong>Working Conditions:</strong> Employers in France must comply with labor laws and regulations regarding working hours, wages, benefits, and workplace safety for foreign workers.</li>\r\n\r\n  <li><strong>Professional Development:</strong> Working in France provides foreign workers with opportunities for professional growth, skill development, and networking in their respective fields.</li>\r\n\r\n  <li><strong>Taxation:</strong> Foreign workers in France are subject to French taxation on their income, and employers may be required to withhold taxes from employee salaries.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> Work visa holders must comply with French immigration laws and regulations throughout their stay, including maintaining valid visa and residence permit documentation.</li>\r\n\r\n  <li><strong>Consulting Immigration Experts:</strong> Due to the complexities of French immigration procedures, foreign workers are advised to seek guidance from immigration experts or advisors to navigate the visa application and residence permit process effectively.</li>\r\n\r\n  <li><strong>Labour Market Conditions:</strong> Foreign workers should research labour market conditions, job opportunities, and industry trends in France before seeking employment and applying for work visas.</li>\r\n\r\n  <li><strong>Employment Rights:</strong> Foreign workers in France are entitled to certain employment rights and protections, including minimum wage laws, paid leave, and access to social security benefits.</li>\r\n\r\n  <li><strong>Language and Cultural Training:</strong> Employers in France may offer language and cultural training programs to help foreign workers integrate into the workplace and communicate effectively with colleagues and clients.</li>\r\n\r\n  <li><strong>Industry-Specific Requirements:</strong> Certain industries in France, such as healthcare, education, and legal services, may have additional licensing or certification requirements for foreign workers.</li>\r\n\r\n  <li><strong>Entrepreneurial Opportunities:</strong> Foreign entrepreneurs and investors may explore opportunities to start businesses or invest in France through visa programs such as the Talent Passport or Entrepreneur Visa.</li>\r\n\r\n  <li><strong>Research and Innovation:</strong> France is a leader in research and innovation, offering opportunities for foreign workers to collaborate with top universities, research institutions, and companies in various fields.</li>\r\n\r\n  <li><strong>Job Search Strategies:</strong> Foreign workers should develop effective job search strategies, including networking, online job portals, recruitment agencies, and attending industry events and career fairs.</li>\r\n\r\n  <li><strong>Work-Life Balance:</strong> France promotes a healthy work-life balance, with generous vacation days, parental leave policies, and cultural emphasis on leisure and relaxation.</li>\r\n\r\n  <li><strong>Expatriate Communities:</strong> Foreign workers in France can connect with expatriate communities and social groups to share experiences, support each other, and build friendships outside of work.</li>\r\n</ol>'),
(9, 'GER', 2, '<h1>Immigration Insights for Work Visa for Germany</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is essential for foreign nationals aspiring to work legally in Germany, one of Europe\'s leading economies.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> Germany offers various types of work visas, including the EU Blue Card for highly skilled professionals, the Temporary Residence Permit for short-term employment, and the Job Seeker Visa for individuals seeking employment opportunities.</li>\r\n\r\n  <li><strong>EU Blue Card Overview:</strong> The EU Blue Card is a residence and work permit for highly skilled non-EU nationals, offering benefits such as facilitated immigration procedures, family reunification, and pathways to permanent residency.</li>\r\n\r\n  <li><strong>Temporary Residence Permit:</strong> The Temporary Residence Permit allows foreign workers to stay in Germany for up to 2 years for temporary employment contracts, renewable based on employment status and eligibility criteria.</li>\r\n\r\n  <li><strong>Job Seeker Visa:</strong> The Job Seeker Visa allows individuals to visit Germany for up to 6 months to search for employment opportunities and secure a job offer, after which they may apply for a work visa.</li>\r\n\r\n  <li><strong>Employer Sponsorship:</strong> Most work visas in Germany require sponsorship from a German employer, who must demonstrate the need to hire a foreign worker and comply with relevant immigration regulations.</li>\r\n\r\n  <li><strong>Skills and Qualifications:</strong> Work visa applicants must possess the skills, qualifications, and experience required for the job position, as specified by the German employer and immigration authorities.</li>\r\n\r\n  <li><strong>German Language Proficiency:</strong> Depending on the nature of the job and employer requirements, applicants may need to demonstrate proficiency in German through language tests such as TestDaF or DSH.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves submitting an application to the German consulate or embassy, providing supporting documents, attending an interview (if required), and paying the visa fee.</li>\r\n\r\n  <li><strong>Supporting Documents:</strong> Required documents for a work visa application may include a valid passport, job offer letter, educational credentials, professional certifications, and proof of accommodation.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> Work visa holders in Germany are required to have health insurance coverage, either through a private insurance provider or the German statutory health insurance system.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in Germany, work visa holders must apply for a residence permit (Aufenthaltstitel) at the local Foreigners\' Registration Office (Ausländerbehörde).</li>\r\n\r\n  <li><strong>Renewal and Extension:</strong> Work visas in Germany may be renewable or extendable depending on the terms of the employment contract, changes in employment status, and compliance with visa regulations.</li>\r\n\r\n  <li><strong>Family Reunification:</strong> Work visa holders in Germany may be eligible to sponsor their family members, including spouses and dependent children, for family reunification and residency.</li>\r\n\r\n  <li><strong>Integration and Cultural Adaptation:</strong> Foreign workers in Germany are encouraged to integrate into German society, learn the language, and adapt to the local culture and customs.</li>\r\n\r\n  <li><strong>Working Conditions:</strong> Employers in Germany must comply with labor laws and regulations regarding working hours, wages, benefits, and workplace safety for foreign workers.</li>\r\n\r\n  <li><strong>Professional Development:</strong> Working in Germany provides foreign workers with opportunities for professional growth, skill development, and networking in their respective fields.</li>\r\n\r\n  <li><strong>Taxation:</strong> Foreign workers in Germany are subject to German taxation on their income, and employers may be required to withhold taxes from employee salaries.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> Work visa holders must comply with German immigration laws and regulations throughout their stay, including maintaining valid visa and residence permit documentation.</li>\r\n\r\n  <li><strong>Consulting Immigration Experts:</strong> Due to the complexities of German immigration procedures, foreign workers are advised to seek guidance from immigration experts or advisors to navigate the visa application and residence permit process effectively.</li>\r\n\r\n  <li><strong>Labour Market Conditions:</strong> Foreign workers should research labour market conditions, job opportunities, and industry trends in Germany before seeking employment and applying for work visas.</li>\r\n\r\n  <li><strong>Employment Rights:</strong> Foreign workers in Germany are entitled to certain employment rights and protections, including minimum wage laws, paid leave, and access to social security benefits.</li>\r\n\r\n  <li><strong>Language and Cultural Training:</strong> Employers in Germany may offer language and cultural training programs to help foreign workers integrate into the workplace and communicate effectively with colleagues and clients.</li>\r\n\r\n  <li><strong>Industry-Specific Requirements:</strong> Certain industries in Germany, such as healthcare, engineering, and IT, may have additional licensing or certification requirements for foreign workers.</li>\r\n\r\n  <li><strong>Entrepreneurial Opportunities:</strong> Foreign entrepreneurs and investors may explore opportunities to start businesses or invest in Germany through visa programs such as the Entrepreneur Visa or Investor Visa.</li>\r\n\r\n  <li><strong>Research and Innovation:</strong> Germany is a leader in research and innovation, offering opportunities for foreign workers to collaborate with top universities, research institutions, and companies in various fields.</li>\r\n\r\n  <li><strong>Job Search Strategies:</strong> Foreign workers should develop effective job search strategies, including networking, online job portals, recruitment agencies, and attending industry events and career fairs.</li>\r\n\r\n  <li><strong>Work-Life Balance:</strong> Germany promotes a healthy work-life balance, with generous vacation days, parental leave policies, and cultural emphasis on leisure and personal well-being.</li>\r\n\r\n  <li><strong>Expatriate Communities:</strong> Foreign workers in Germany can connect with expatriate communities and social groups to share experiences, support each other, and build friendships outside of work.</li>\r\n</ol>'),
(10, 'GER', 1, '<h1>Immigration Insights for Study Visa for Germany</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Study Visas:</strong> Obtaining a study visa is essential for international students aspiring to pursue higher education in Germany, known for its quality education system and diverse academic programs.</li>\r\n\r\n  <li><strong>Types of Study Visas:</strong> Germany offers various types of study visas, including the Student Visa (Visum zu Studienzwecken) for full-time degree programs, the Language Course Visa (Visum zu Sprachkursen) for intensive language courses, and the Student Applicant Visa (Visum zur Studienbewerbung) for individuals applying to German universities.</li>\r\n\r\n  <li><strong>Student Visa Overview:</strong> The Student Visa allows international students to study in Germany for programs exceeding 90 days, including undergraduate, graduate, and doctoral degrees, as well as preparatory courses.</li>\r\n\r\n  <li><strong>Language Course Visa Overview:</strong> The Language Course Visa is suitable for students enrolled in intensive language courses in preparation for higher education studies or language proficiency requirements.</li>\r\n\r\n  <li><strong>Student Applicant Visa Overview:</strong> The Student Applicant Visa allows individuals to visit Germany for up to 3 months to search for study programs, attend university interviews, and complete admission requirements.</li>\r\n\r\n  <li><strong>Admissions Process:</strong> International students must apply directly to their chosen German universities and obtain a letter of acceptance or conditional offer before applying for a study visa.</li>\r\n\r\n  <li><strong>Financial Requirements:</strong> Applicants must demonstrate sufficient financial resources to cover tuition fees, living expenses, and other related costs for the duration of their studies in Germany.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> All international students in Germany are required to have health insurance coverage, either through a private insurance provider or the German statutory health insurance system.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves submitting an application to the German consulate or embassy, providing supporting documents, attending an interview (if required), and paying the visa fee.</li>\r\n\r\n  <li><strong>Supporting Documents:</strong> Required documents for a study visa application may include a valid passport, letter of acceptance from the German university, proof of financial resources, health insurance coverage, and language proficiency certificates.</li>\r\n\r\n  <li><strong>Language Proficiency:</strong> Depending on the language of instruction, applicants may need to demonstrate proficiency in German or English through standardized tests such as TestDaF, DSH, TOEFL, or IELTS.</li>\r\n\r\n  <li><strong>Visa Interview:</strong> Some applicants may be required to attend a visa interview at the German consulate or embassy to discuss their study plans, language skills, and financial resources.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for study visas vary depending on the applicant\'s country of residence and the volume of applications, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in Germany, students with a study visa must apply for a residence permit (Aufenthaltstitel) at the local Foreigners\' Registration Office (Ausländerbehörde).</li>\r\n\r\n  <li><strong>Part-Time Work:</strong> International students in Germany are allowed to work part-time during their studies, typically up to 20 hours per week, to supplement their income and gain professional experience.</li>\r\n\r\n  <li><strong>Internship Opportunities:</strong> Many German universities and colleges offer internship programs as part of their curriculum, providing students with practical experience in their field of study.</li>\r\n\r\n  <li><strong>Cultural Immersion:</strong> Studying in Germany offers international students the opportunity to immerse themselves in German culture, language, and society, fostering personal growth and intercultural competence.</li>\r\n\r\n  <li><strong>Academic Excellence:</strong> Germany is renowned for its academic excellence, with world-class universities, research institutions, and innovative academic programs across various disciplines.</li>\r\n\r\n  <li><strong>Student Support Services:</strong> German universities provide a range of support services to help international students adjust to academic life, including orientation programs, academic advising, language courses, and student organizations.</li>\r\n\r\n  <li><strong>Travel Opportunities:</strong> Germany\'s central location in Europe allows students to easily travel to neighboring countries and explore diverse cultures, languages, and historical landmarks during study breaks.</li>\r\n\r\n  <li><strong>Student Discounts:</strong> International students in Germany are eligible for various discounts on transportation, cultural events, museums, and entertainment venues with a valid student ID card.</li>\r\n\r\n  <li><strong>Post-Graduation Options:</strong> After completing their studies, international students may explore options for post-graduation employment, further education, or returning to their home countries with valuable skills and qualifications.</li>\r\n\r\n  <li><strong>Pathways to Permanent Residency:</strong> Graduates of German universities may be eligible to apply for permanent residency in Germany through various immigration pathways, such as the EU Blue Card or the German Skilled Worker Visa.</li>\r\n\r\n  <li><strong>Language Courses:</strong> International students can take advantage of language courses offered in Germany to improve their German language skills and enhance their academic and professional prospects.</li>\r\n\r\n  <li><strong>Student Accommodation:</strong> German universities typically offer affordable student housing options, including dormitories, shared apartments (WG), and private accommodation, to meet the diverse needs of international students.</li>\r\n\r\n  <li><strong>Scholarship Opportunities:</strong> International students may be eligible for scholarships, grants, and financial aid offered by German universities, government agencies, and private organizations to support their studies and research projects.</li>\r\n\r\n  <li><strong>Networking and Social Activities:</strong> Engaging in student clubs, cultural events, and social activities allows international students to build friendships, expand their networks, and enrich their overall university experience in Germany.</li>\r\n\r\n  <li><strong>Visa Renewal and Extensions:</strong> Students planning to extend their stay in Germany beyond the initial visa validity period must apply for a visa renewal or extension through the local Foreigners\' Registration Office (Ausländerbehörde).</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> International students must comply with German immigration laws and regulations throughout their stay, including visa conditions, residence permit requirements, and registration with local authorities.</li>\r\n\r\n  <li><strong>Consulting Academic Advisors:</strong> Academic advisors at German universities can provide guidance and support to international students regarding course selection, academic requirements, and university policies.</li>\r\n</ol>'),
(11, 'UAE', 1, '<h1>Immigration Insights for Study Visa for UAE</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Study Visas:</strong> Obtaining a study visa is essential for international students aspiring to pursue higher education in the United Arab Emirates (UAE), known for its world-class universities and diverse academic programs.</li>\r\n\r\n  <li><strong>Types of Study Visas:</strong> The UAE offers various types of study visas, including student visas for full-time degree programs, short-term study visas for language courses or specialized training, and exchange visas for students participating in academic exchange programs.</li>\r\n\r\n  <li><strong>Student Visa Overview:</strong> The student visa allows international students to reside in the UAE for the duration of their academic program, typically issued for the duration of the study program.</li>\r\n\r\n  <li><strong>Short-Term Study Visa Overview:</strong> Short-term study visas are suitable for students enrolled in language courses, professional training programs, or short-term academic courses in the UAE.</li>\r\n\r\n  <li><strong>Exchange Visa Overview:</strong> Exchange visas are designed for students participating in academic exchange programs between their home institutions and universities in the UAE, facilitating cultural exchange and academic collaboration.</li>\r\n\r\n  <li><strong>Admissions Process:</strong> International students must apply directly to their chosen universities in the UAE and obtain an acceptance letter or admission confirmation before applying for a study visa.</li>\r\n\r\n  <li><strong>Financial Requirements:</strong> Applicants must demonstrate sufficient financial resources to cover tuition fees, living expenses, and other related costs for the duration of their studies in the UAE.</li>\r\n\r\n  <li><strong>Health Insurance:</strong> All international students in the UAE are required to have health insurance coverage, either through a private insurance provider or the university\'s health insurance plan.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process involves submitting an application to the UAE embassy or consulate in their home country, providing supporting documents, attending an interview (if required), and paying the visa fee.</li>\r\n\r\n  <li><strong>Supporting Documents:</strong> Required documents for a study visa application may include a valid passport, acceptance letter from the UAE university, proof of financial resources, health insurance coverage, and academic transcripts.</li>\r\n\r\n  <li><strong>Language Proficiency:</strong> Depending on the language of instruction, applicants may need to demonstrate proficiency in English or Arabic through standardized tests such as TOEFL or IELTS.</li>\r\n\r\n  <li><strong>Visa Interview:</strong> Some applicants may be required to attend a visa interview at the UAE embassy or consulate to discuss their study plans, academic background, and financial resources.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for study visas vary depending on the applicant\'s country of residence and the volume of applications, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in the UAE, students with a study visa must apply for a residence permit (entry permit or student visa) at the General Directorate of Residency and Foreigners Affairs (GDRFA).</li>\r\n\r\n  <li><strong>Part-Time Work:</strong> International students in the UAE may be allowed to work part-time during their studies, subject to certain restrictions and approval from the university and immigration authorities.</li>\r\n\r\n  <li><strong>Internship Opportunities:</strong> Many universities and companies in the UAE offer internship programs as part of the curriculum, providing students with practical experience in their field of study.</li>\r\n\r\n  <li><strong>Cultural Immersion:</strong> Studying in the UAE offers international students the opportunity to immerse themselves in the rich cultural heritage, diverse traditions, and modern lifestyle of the country.</li>\r\n\r\n  <li><strong>Academic Excellence:</strong> The UAE is home to several prestigious universities and educational institutions, offering high-quality education and research opportunities across various disciplines.</li>\r\n\r\n  <li><strong>Student Support Services:</strong> UAE universities provide a range of support services to help international students adjust to academic life, including orientation programs, academic advising, counseling services, and student clubs.</li>\r\n\r\n  <li><strong>Travel Opportunities:</strong> The UAE\'s strategic location in the Middle East allows students to explore neighboring countries and experience different cultures, landscapes, and historical sites during study breaks.</li>\r\n\r\n  <li><strong>Student Discounts:</strong> International students in the UAE may be eligible for various discounts on transportation, dining, entertainment, and cultural activities with a valid student ID card.</li>\r\n\r\n  <li><strong>Post-Graduation Options:</strong> After completing their studies, international students may explore options for post-graduation employment, further education, or returning to their home countries with valuable skills and qualifications.</li>\r\n\r\n  <li><strong>Language Courses:</strong> International students can take advantage of language courses offered in the UAE to improve their Arabic or English language skills and enhance their academic and professional prospects.</li>\r\n\r\n  <li><strong>Student Accommodation:</strong> UAE universities typically offer on-campus and off-campus accommodation options for international students, including dormitories, apartments, and shared housing, to meet their diverse needs.</li>\r\n\r\n  <li><strong>Scholarship Opportunities:</strong> International students may be eligible for scholarships, grants, and financial aid offered by UAE universities, government agencies, and private organizations to support their studies and research projects.</li>\r\n\r\n  <li><strong>Networking and Social Activities:</strong> Engaging in student clubs, cultural events, and social activities allows international students to build friendships, expand their networks, and enrich their overall university experience in the UAE.</li>\r\n\r\n  <li><strong>Visa Renewal and Extensions:</strong> Students planning to extend their stay in the UAE beyond the initial visa validity period must apply for a visa renewal or extension through the General Directorate of Residency and Foreigners Affairs (GDRFA).</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> International students must comply with UAE immigration laws and regulations throughout their stay, including visa conditions, residence permit requirements, and registration with local authorities.</li>\r\n\r\n  <li><strong>Consulting Academic Advisors:</strong> Academic advisors at UAE universities can provide guidance and support to international students regarding course selection, academic requirements, and university policies.</li>\r\n</ol>'),
(12, 'UAE', 2, '<h1>Immigration Insights for Work Visa for UAE</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is essential for foreign nationals aspiring to work legally in the United Arab Emirates (UAE), offering diverse job opportunities in various industries.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> The UAE offers various types of work visas, including employment visas for skilled professionals, investor visas for business owners, and dependent visas for family members of visa holders.</li>\r\n\r\n  <li><strong>Employment Visa Overview:</strong> The employment visa allows foreign workers to reside and work in the UAE under sponsorship from a UAE-based employer, typically issued for a specific job position and duration.</li>\r\n\r\n  <li><strong>Investor Visa Overview:</strong> The investor visa is designed for entrepreneurs and investors who wish to establish or invest in businesses in the UAE, providing residency and business opportunities in the country.</li>\r\n\r\n  <li><strong>Dependent Visa Overview:</strong> Dependent visas are available for family members (spouse, children, parents) of foreign nationals holding valid work or residency visas in the UAE, allowing them to reside in the country.</li>\r\n\r\n  <li><strong>Employer Sponsorship:</strong> Most work visas in the UAE require sponsorship from a UAE-based employer, who must apply for the visa on behalf of the foreign worker and comply with relevant immigration regulations.</li>\r\n\r\n  <li><strong>Job Offer Requirements:</strong> Work visa applicants must have a valid job offer from a UAE employer who is willing to sponsor their visa application and provide necessary documentation to support the application.</li>\r\n\r\n  <li><strong>Residency Permit:</strong> Upon arrival in the UAE, work visa holders must apply for a residency permit (residence visa or Emirates ID) at the General Directorate of Residency and Foreigners Affairs (GDRFA).</li>\r\n\r\n  <li><strong>Medical Examination:</strong> Some work visa applicants may be required to undergo a medical examination to ensure they meet health requirements set by UAE authorities.</li>\r\n\r\n  <li><strong>Documentary Requirements:</strong> Required documents for a work visa application may include a valid passport, employment contract, educational certificates, passport-sized photographs, and medical test results.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for work visas vary depending on the applicant\'s nationality, job category, and the sponsoring employer, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Work Permit:</strong> In addition to the work visa, foreign workers in certain professions may need to obtain a work permit or labor card from the Ministry of Human Resources and Emiratisation (MOHRE) to legally work in the UAE.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> Work visa holders must comply with UAE labor laws and regulations, including contractual obligations, working hours, salary payments, and adherence to employer policies.</li>\r\n\r\n  <li><strong>Renewal and Extensions:</strong> Work visas in the UAE are typically granted for a specific duration, after which they may be renewed or extended subject to meeting eligibility criteria and employer sponsorship.</li>\r\n\r\n  <li><strong>Change of Employer:</strong> In some cases, work visa holders may seek to change employers in the UAE, requiring approval from relevant authorities and compliance with immigration laws.</li>\r\n\r\n  <li><strong>Dependent Visa Sponsorship:</strong> Work visa holders in the UAE may sponsor dependent visas for their family members (spouse, children) to reside with them in the country, subject to certain conditions and financial requirements.</li>\r\n\r\n  <li><strong>Business Ownership:</strong> Investors and entrepreneurs holding investor visas in the UAE have the opportunity to establish businesses, invest in real estate, and participate in economic activities in the country.</li>\r\n\r\n  <li><strong>Immigration Updates:</strong> It\'s essential for work visa holders to stay informed about changes in UAE immigration policies, regulations, and visa processing procedures that may affect their residency status or employment rights.</li>\r\n\r\n  <li><strong>Consulting Legal Advisors:</strong> Given the complexities of UAE immigration laws and procedures, individuals seeking work visas are encouraged to seek legal advice and assistance from qualified immigration attorneys or consultants to navigate the process effectively.</li>\r\n\r\n  <li><strong>Work-Life Balance:</strong> The UAE offers a vibrant and cosmopolitan lifestyle, with opportunities for work-life balance, leisure activities, and cultural experiences for expatriates living and working in the country.</li>\r\n\r\n  <li><strong>Language and Cultural Integration:</strong> While English is widely spoken in the UAE, learning Arabic and understanding local customs and traditions can enhance communication and integration into the local community.</li>\r\n\r\n  <li><strong>Networking Opportunities:</strong> Expanding professional networks through industry events, business forums, and social gatherings can facilitate career growth and opportunities for advancement in the UAE.</li>\r\n\r\n  <li><strong>Health and Safety:</strong> The UAE prioritizes health and safety standards in the workplace, providing access to quality healthcare services, emergency assistance, and workplace safety regulations for workers.</li>\r\n\r\n  <li><strong>Taxation and Financial Planning:</strong> Understanding tax regulations, financial planning, and investment opportunities in the UAE can help work visa holders maximize their earnings and savings while living and working in the country.</li>\r\n\r\n  <li><strong>Retirement Planning:</strong> Expatriates in the UAE may consider retirement planning options, including pension schemes, savings accounts, and investment portfolios, to ensure financial security in the long term.</li>\r\n\r\n  <li><strong>Community Engagement:</strong> Getting involved in community initiatives, volunteer programs, and social causes can contribute to a sense of belonging and fulfillment for expatriates living in the UAE.</li>\r\n\r\n  <li><strong>Respect for Local Laws:</strong> Respecting local customs, traditions, and laws is essential for work visa holders in the UAE, promoting harmony, mutual respect, and cultural diversity in the workplace and society.</li>\r\n\r\n  <li><strong>Professional Development:</strong> The UAE offers opportunities for professional development, career advancement, and skill enhancement through training programs, workshops, and professional certifications in various industries.</li>\r\n\r\n  <li><strong>Entrepreneurial Spirit:</strong> The entrepreneurial spirit is celebrated in the UAE, with initiatives to support startups, innovation, and business ventures across different sectors of the economy.</li>\r\n</ol>'),
(13, 'GBR', 2, '<h1>Immigration Insights for Work Visa for GBR</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Work Visas:</strong> Obtaining a work visa is essential for foreign nationals aspiring to work legally in the United Kingdom (UK), offering diverse job opportunities in various industries.</li>\r\n\r\n  <li><strong>Types of Work Visas:</strong> The UK offers various types of work visas, including Tier 2 (General) visas for skilled workers, Tier 1 (Entrepreneur) visas for entrepreneurs, and Tier 5 visas for temporary workers and youth mobility.</li>\r\n\r\n  <li><strong>Tier 2 (General) Visa Overview:</strong> The Tier 2 (General) visa is designed for skilled workers with a job offer from a UK employer who holds a valid Certificate of Sponsorship (CoS) and meets other eligibility criteria.</li>\r\n\r\n  <li><strong>Tier 1 (Entrepreneur) Visa Overview:</strong> The Tier 1 (Entrepreneur) visa allows individuals to establish or take over a business in the UK, requiring a minimum investment amount and meeting specific entrepreneurial requirements.</li>\r\n\r\n  <li><strong>Tier 5 Visa Overview:</strong> The Tier 5 visa category encompasses various subcategories, including the Youth Mobility Scheme (Tier 5 Temporary Worker), Government Authorised Exchange, and International Agreement categories.</li>\r\n\r\n  <li><strong>Employer Sponsorship:</strong> Most work visas in the UK require sponsorship from a UK-based employer who must hold a valid sponsor license and issue a CoS for the prospective employee.</li>\r\n\r\n  <li><strong>Job Offer Requirements:</strong> Work visa applicants must have a valid job offer from a UK employer who is willing to sponsor their visa application and meet minimum salary, skill, and English language requirements.</li>\r\n\r\n  <li><strong>Residence Permit:</strong> Upon arrival in the UK, work visa holders must apply for a residence permit (biometric residence permit) within a specified period to legally reside and work in the country.</li>\r\n\r\n  <li><strong>Documentary Requirements:</strong> Required documents for a work visa application may include a valid passport, employment contract, CoS reference number, proof of qualifications, and financial evidence.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for work visas vary depending on the applicant\'s nationality, job category, and the volume of applications, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Immigration Health Surcharge (IHS):</strong> Work visa applicants are required to pay the Immigration Health Surcharge (IHS) as part of their visa application to access National Health Service (NHS) healthcare services in the UK.</li>\r\n\r\n  <li><strong>Biometric Residence Permit (BRP):</strong> Upon approval of the visa application, work visa holders receive a Biometric Residence Permit (BRP) containing their personal details, immigration status, and rights to reside and work in the UK.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> Work visa holders must comply with UK immigration laws and regulations, including visa conditions, employment rights, taxation, and reporting requirements.</li>\r\n\r\n  <li><strong>Renewal and Extensions:</strong> Work visas in the UK are typically granted for a specific duration, after which they may be renewed or extended subject to meeting eligibility criteria, employer sponsorship, and immigration rules.</li>\r\n\r\n  <li><strong>Change of Employer:</strong> In some cases, work visa holders may seek to change employers in the UK, requiring approval from relevant authorities and compliance with immigration laws.</li>\r\n\r\n  <li><strong>Dependent Visa Sponsorship:</strong> Work visa holders in the UK may sponsor dependent visas for their family members (spouse, children) to reside with them in the country, subject to certain conditions and financial requirements.</li>\r\n\r\n  <li><strong>Entrepreneurial Opportunities:</strong> The UK offers a conducive environment for entrepreneurship, with access to funding, business support services, and innovation hubs for aspiring entrepreneurs.</li>\r\n\r\n  <li><strong>Professional Development:</strong> Work visa holders can enhance their skills, qualifications, and career prospects through professional development programs, training courses, and continuing education opportunities in the UK.</li>\r\n\r\n  <li><strong>Networking:</strong> Building professional networks through industry events, conferences, and networking platforms can facilitate career growth, job opportunities, and business connections in the UK.</li>\r\n\r\n  <li><strong>Work-Life Balance:</strong> The UK promotes work-life balance through flexible working arrangements, recreational facilities, and social activities, allowing employees to pursue personal interests and hobbies outside of work.</li>\r\n\r\n  <li><strong>Cultural Integration:</strong> Embracing British culture, traditions, and customs can enrich the experience of work visa holders in the UK, fostering cross-cultural understanding and appreciation.</li>\r\n\r\n  <li><strong>Language Skills:</strong> Improving English language skills through language courses, language exchanges, and immersive experiences can enhance communication and integration into the UK society and workplace.</li>\r\n\r\n  <li><strong>Health and Safety Standards:</strong> The UK upholds high health and safety standards in the workplace, ensuring the well-being and welfare of employees through regulatory compliance and workplace safety measures.</li>\r\n\r\n  <li><strong>Financial Planning:</strong> Managing finances, budgeting, and tax planning are essential aspects of living and working in the UK, requiring sound financial management and compliance with tax regulations.</li>\r\n\r\n  <li><strong>Community Engagement:</strong> Getting involved in community initiatives, volunteer work, and social causes can contribute to a sense of belonging and civic engagement for work visa holders in the UK.</li>\r\n\r\n  <li><strong>Professional Associations:</strong> Joining professional associations and industry bodies provides opportunities for networking, professional development, and knowledge sharing in the UK.</li>\r\n\r\n  <li><strong>Adapting to British Work Culture:</strong> Understanding British work culture, etiquette, and business practices can facilitate effective communication, collaboration, and teamwork in the UK workplace.</li>\r\n\r\n  <li><strong>Continued Learning:</strong> Embracing a culture of lifelong learning and continuous improvement can support career advancement, personal growth, and professional success for work visa holders in the UK.</li>\r\n\r\n  <li><strong>Contribution to Society:</strong> Work visa holders in the UK have the opportunity to make meaningful contributions to society, economy, and community through their work, innovation, and social initiatives.</li>\r\n</ol>'),
(14, 'GBR', 1, '<h1>Immigration Insights for Study Visa for GBR</h1>\r\n\r\n<ol>\r\n  <li><strong>Introduction to Study Visas:</strong> Obtaining a study visa is essential for international students aspiring to pursue higher education in the United Kingdom (UK), offering access to world-class universities and academic programs.</li>\r\n\r\n  <li><strong>Types of Study Visas:</strong> The UK offers various types of study visas, including Tier 4 (General) visas for full-time students, Tier 4 (Child) visas for minors, and short-term study visas for short courses and English language programs.</li>\r\n\r\n  <li><strong>Tier 4 (General) Visa Overview:</strong> The Tier 4 (General) visa is designed for international students aged 16 or over who wish to study in the UK for longer than six months, enrolled in a full-time degree, diploma, or certificate course.</li>\r\n\r\n  <li><strong>Tier 4 (Child) Visa Overview:</strong> The Tier 4 (Child) visa is for children aged 4 to 17 who wish to study at independent schools in the UK, requiring sponsorship from a licensed Tier 4 sponsor and meeting specific eligibility criteria.</li>\r\n\r\n  <li><strong>Short-Term Study Visa Overview:</strong> The short-term study visa allows individuals to study short courses, English language programs, or academic training programs in the UK for up to six months (or 11 months for English language courses).</li>\r\n\r\n  <li><strong>University Admission Requirements:</strong> International students applying for study visas must secure admission to a recognized UK institution and obtain a Confirmation of Acceptance for Studies (CAS) from their prospective university.</li>\r\n\r\n  <li><strong>Financial Requirements:</strong> Study visa applicants must demonstrate sufficient funds to cover tuition fees, living expenses, and other related costs for the duration of their studies in the UK, as required by immigration authorities.</li>\r\n\r\n  <li><strong>English Language Proficiency:</strong> Most UK universities require international students to demonstrate proficiency in English through standardized tests such as the IELTS, TOEFL, or Cambridge English exams.</li>\r\n\r\n  <li><strong>Visa Application Process:</strong> The visa application process typically involves completing an online application form, scheduling a biometric appointment, submitting required documents, and paying the visa application fee.</li>\r\n\r\n  <li><strong>Documentary Requirements:</strong> Required documents for a study visa application may include a valid passport, CAS letter from the university, proof of funds, academic transcripts, and evidence of English language proficiency.</li>\r\n\r\n  <li><strong>Visa Processing Time:</strong> Processing times for study visas vary depending on the applicant\'s nationality, application volume, and time of year, so it\'s advisable to apply well in advance of the intended start date.</li>\r\n\r\n  <li><strong>Biometric Residence Permit (BRP):</strong> Upon approval of the visa application, study visa holders receive a Biometric Residence Permit (BRP) containing their personal details, immigration status, and rights to reside and study in the UK.</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> Study visa holders must comply with UK immigration laws and regulations, including visa conditions, enrollment requirements, and reporting obligations to the university and immigration authorities.</li>\r\n\r\n  <li><strong>Renewal and Extensions:</strong> Study visas in the UK are typically granted for the duration of the academic program, with options to extend or renew the visa subject to meeting eligibility criteria and university sponsorship.</li>\r\n\r\n  <li><strong>Part-Time Employment:</strong> Tier 4 (General) visa holders may be eligible to work part-time (up to 20 hours per week) during term-time and full-time during holidays, providing an opportunity to gain work experience and supplement income.</li>\r\n\r\n  <li><strong>Healthcare Coverage:</strong> Study visa holders may be eligible for access to National Health Service (NHS) healthcare services in the UK, depending on the duration and nature of their studies.</li>\r\n\r\n  <li><strong>Accommodation Options:</strong> UK universities typically offer accommodation options for international students, including on-campus residences, private halls of residence, and private accommodation in the local community.</li>\r\n\r\n  <li><strong>Student Support Services:</strong> Universities in the UK provide a range of support services for international students, including academic advising, counseling, English language support, and cultural integration programs.</li>\r\n\r\n  <li><strong>Student Societies and Clubs:</strong> Engaging in student societies, clubs, and extracurricular activities allows international students to meet peers, explore interests, and participate in social and cultural events.</li>\r\n\r\n  <li><strong>Cultural Integration:</strong> Embracing British culture, traditions, and customs can enrich the experience of international students in the UK, fostering cross-cultural understanding and appreciation.</li>\r\n\r\n  <li><strong>Travel Opportunities:</strong> Studying in the UK provides opportunities for international students to explore diverse landscapes, historical landmarks, and cultural attractions across the country and Europe.</li>\r\n\r\n  <li><strong>Graduation and Post-Study Options:</strong> Upon completing their studies, international students may explore options for post-graduation employment, further education, or returning to their home countries with valuable skills and qualifications.</li>\r\n\r\n  <li><strong>Language Courses:</strong> International students can take advantage of language courses offered in the UK to improve their English language skills and enhance their academic and professional prospects.</li>\r\n\r\n  <li><strong>Scholarship Opportunities:</strong> International students may be eligible for scholarships, grants, and financial aid offered by UK universities, government agencies, and private organizations to support their studies and research projects.</li>\r\n\r\n  <li><strong>Networking and Social Activities:</strong> Engaging in student clubs, cultural events, and social activities allows international students to build friendships, expand their networks, and enrich their overall university experience in the UK.</li>\r\n\r\n  <li><strong>Visa Renewal and Extensions:</strong> Students planning to extend their stay in the UK beyond the initial visa validity period must apply for a visa renewal or extension through the UK Visas and Immigration (UKVI).</li>\r\n\r\n  <li><strong>Legal Compliance:</strong> International students must comply with UK immigration laws and regulations throughout their stay, including visa conditions, enrollment requirements, and registration with local authorities.</li>\r\n\r\n  <li><strong>Consulting Academic Advisors:</strong> Academic advisors at UK universities can provide guidance and support to international students regarding course selection, academic requirements, and university policies.</li>\r\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `immigration_requirements`
--

CREATE TABLE `immigration_requirements` (
  `requirement_id` int(11) NOT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `visa_category_id` int(11) DEFAULT NULL,
  `requirement_title` varchar(255) DEFAULT NULL,
  `requirement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `immigration_requirements`
--

INSERT INTO `immigration_requirements` (`requirement_id`, `country_code`, `visa_category_id`, `requirement_title`, `requirement`) VALUES
(1, 'USA', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(2, 'USA', 1, 'SEVIS Form', 'SEVIS Form (Form I-20 for F-1 visa or Form DS-2019 for J-1 visa)'),
(3, 'USA', 1, 'Financial Proof', 'Proof of financial support to cover tuition fees and living expenses'),
(4, 'USA', 1, 'English Proficiency', 'Proof of English proficiency through standardized tests like TOEFL or IELTS'),
(5, 'USA', 1, 'Visa Application', 'Visa application form (DS-160)'),
(6, 'USA', 1, 'Visa Application Fee', 'Visa application fee payment'),
(7, 'USA', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(8, 'USA', 2, 'Job Offer', 'Job offer from a U.S. employer'),
(9, 'USA', 2, 'USCIS Approval', 'Approval of Form I-129 petition by USCIS'),
(10, 'USA', 2, 'Qualifications Proof', 'Proof of qualifications and experience required for the job'),
(11, 'USA', 2, 'Visa Application', 'Visa application form (DS-160)'),
(12, 'USA', 2, 'Visa Application Fee', 'Visa application fee payment'),
(13, 'UAE', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(14, 'UAE', 1, 'Offer Letter', 'Offer letter from a recognized educational institution in the UAE'),
(15, 'UAE', 1, 'Financial Proof', 'Proof of financial means to cover tuition fees and living expenses'),
(16, 'UAE', 1, 'Medical Fitness Certificate', 'Medical fitness certificate'),
(17, 'UAE', 1, 'Security Clearance Certificate', 'Security clearance certificate'),
(18, 'UAE', 1, 'Visa Application', 'Visa application form'),
(19, 'UAE', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(20, 'UAE', 2, 'Job Offer', 'Job offer from a UAE-based employer'),
(21, 'UAE', 2, 'Labor Contract', 'Labor contract approved by the Ministry of Human Resources and Emiratisation (MOHRE)'),
(22, 'UAE', 2, 'Medical Fitness Certificate', 'Medical fitness certificate'),
(23, 'UAE', 2, 'Security Clearance Certificate', 'Security clearance certificate'),
(24, 'UAE', 2, 'Visa Application', 'Visa application form'),
(25, 'GBR', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(26, 'GBR', 1, 'CAS', 'CAS (Confirmation of Acceptance for Studies) issued by a UK educational institution'),
(27, 'GBR', 1, 'Financial Proof', 'Proof of funds to cover tuition fees and living expenses'),
(28, 'GBR', 1, 'English Proficiency', 'Proof of English language proficiency (e.g., IELTS, TOEFL)'),
(29, 'GBR', 1, 'TB Test Certificate', 'TB test certificate (if applicable)'),
(30, 'GBR', 1, 'Visa Application', 'Visa application form (online)'),
(31, 'GBR', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(32, 'GBR', 2, 'Job Offer', 'Job offer from a UK-based employer with a valid sponsor license'),
(33, 'GBR', 2, 'Certificate of Sponsorship', 'Certificate of Sponsorship (CoS) issued by the sponsoring employer'),
(34, 'GBR', 2, 'Qualifications Proof', 'Proof of qualifications and experience required for the job'),
(35, 'GBR', 2, 'English Proficiency', 'Proof of English language proficiency (if applicable)'),
(36, 'GBR', 2, 'TB Test Certificate', 'TB test certificate (if applicable)'),
(37, 'GBR', 2, 'Visa Application', 'Visa application form (online)'),
(38, 'CAD', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(39, 'CAD', 1, 'Letter of Acceptance', 'Letter of acceptance from a Canadian Designated Learning Institution (DLI)'),
(40, 'CAD', 1, 'Financial Proof', 'Proof of financial support to cover tuition fees and living expenses'),
(41, 'CAD', 1, 'Medical Examination Certificate', 'Medical examination certificate'),
(42, 'CAD', 1, 'Police Clearance Certificate', 'Police clearance certificate (if applicable)'),
(43, 'CAD', 1, 'Visa Application', 'Visa application form (online or paper)'),
(44, 'CAD', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(45, 'CAD', 2, 'Job Offer', 'Job offer from a Canadian employer with a positive Labour Market Impact Assessment (LMIA)'),
(46, 'CAD', 2, 'Positive LMIA', 'Positive LMIA issued by Employment and Social Development Canada (ESDC)'),
(47, 'CAD', 2, 'Qualifications Proof', 'Proof of qualifications and experience required for the job'),
(48, 'CAD', 2, 'Medical Examination Certificate', 'Medical examination certificate'),
(49, 'CAD', 2, 'Police Clearance Certificate', 'Police clearance certificate (if applicable)'),
(50, 'CAD', 2, 'Visa Application', 'Visa application form (online or paper)'),
(51, 'FR', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(52, 'FR', 1, 'Acceptance Letter', 'Acceptance letter from a French educational institution'),
(53, 'FR', 1, 'Financial Proof', 'Proof of financial means to cover tuition fees and living expenses'),
(54, 'FR', 1, 'Medical Insurance Coverage', 'Medical insurance coverage'),
(55, 'FR', 1, 'Proof of Accommodation', 'Proof of accommodation in France'),
(56, 'FR', 1, 'Visa Application', 'Visa application form (online or paper)'),
(57, 'FR', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(58, 'FR', 2, 'Job Offer', 'Job offer from a French employer'),
(59, 'FR', 2, 'Work Contract', 'Work contract approved by the French Ministry of Labour'),
(60, 'FR', 2, 'Qualifications Proof', 'Proof of qualifications and experience required for the job'),
(61, 'FR', 2, 'Medical Insurance Coverage', 'Medical insurance coverage'),
(62, 'FR', 2, 'Proof of Accommodation', 'Proof of accommodation in France'),
(63, 'FR', 2, 'Visa Application', 'Visa application form (online or paper)'),
(64, 'AUS', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(65, 'AUS', 1, 'eCOE', 'Electronic Confirmation of Enrolment (eCOE) from an Australian educational institution'),
(66, 'AUS', 1, 'Financial Capacity Proof', 'Proof of financial capacity to cover tuition fees and living expenses'),
(67, 'AUS', 1, 'OSHC', 'Overseas Student Health Cover (OSHC)'),
(68, 'AUS', 1, 'GTE Statement', 'Genuine Temporary Entrant (GTE) statement'),
(69, 'AUS', 1, 'Visa Application', 'Visa application form (online)'),
(70, 'AUS', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(71, 'AUS', 2, 'Job Offer', 'Job offer from an Australian employer'),
(72, 'AUS', 2, 'Nomination', 'Nomination by an Australian employer under an approved occupation'),
(73, 'AUS', 2, 'Skills Assessment', 'Skills assessment from a relevant Australian assessing authority'),
(74, 'AUS', 2, 'English Proficiency', 'Proof of English language proficiency (if applicable)'),
(75, 'AUS', 2, 'Visa Application', 'Visa application form (online)'),
(76, 'GER', 1, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(77, 'GER', 1, 'Admission Letter', 'Admission letter from a German university or institution'),
(78, 'GER', 1, 'Financial Resources Proof', 'Proof of financial resources to cover tuition fees and living expenses'),
(79, 'GER', 1, 'Health Insurance Coverage', 'Health insurance coverage'),
(80, 'GER', 1, 'Blocked Account or Financial Support', 'Blocked account or proof of financial support'),
(81, 'GER', 1, 'Visa Application', 'Visa application form (online or paper)'),
(82, 'GER', 2, 'Passport', 'Valid passport with at least six months validity beyond intended stay'),
(83, 'GER', 2, 'Job Offer', 'Job offer from a German employer'),
(84, 'GER', 2, 'Work Contract', 'Work contract or binding job offer letter'),
(85, 'GER', 2, 'Qualifications Proof', 'Proof of qualifications and experience required for the job'),
(86, 'GER', 2, 'Health Insurance Coverage', 'Health insurance coverage'),
(87, 'GER', 2, 'Visa Application', 'Visa application form (online or paper)');

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
(4, 6, 'Male', '1978-03-01', 'Nigeria', 'Single', 'Masters Degree', 9, 'Intermediate'),
(8, 7, 'Female', '1986-12-24', 'Venezuela', 'Married', 'Doctorate Degree', 8, 'Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `author_id`, `post`, `created_at`) VALUES
(1, 2, 7, 'United States have started allowing applicants from Nigeria', '1712588324'),
(2, 3, 7, 'Who knows if Canada has start Asylum Visa?', '1712598125'),
(3, 3, 7, 'What happens if UAE bounces an application?', '1712598208'),
(4, 2, 7, 'Do you know that a good job down here could fetch you a stress-free visa? Just try get nice paying job', '1713527043');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `post_category_id` int(11) NOT NULL,
  `post_category` varchar(255) NOT NULL,
  `post_category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`post_category_id`, `post_category`, `post_category_description`) VALUES
(1, 'Policy Analysis', 'Delve into the intricacies of immigration policies, including current legislation, proposed reforms, and their implications for immigrants and host countries.'),
(2, 'Immigration News and Updates', 'Provide timely updates on significant developments in immigration law, policy changes, court rulings, and global migration trends.'),
(3, 'Immigrant Stories and Experiences', 'Share personal narratives and testimonials from immigrants themselves, highlighting their journeys, challenges, successes, and contributions to society.'),
(4, 'Refugee Crisis and Humanitarian Issues', 'Explore the humanitarian aspects of immigration, including refugee crises, displacement, asylum-seeking, and international efforts to address these challenges.'),
(5, 'Economic Impact and Labor Market Analysis', 'Analyze the economic effects of immigration on host countries\' economies, including labor market dynamics, job creation, entrepreneurship, and innovation.'),
(6, 'Cultural Diversity and Integration', 'Discuss the cultural dimensions of immigration, including the impact of diverse immigrant communities on host societies, cultural exchange, and strategies for fostering social cohesion.'),
(7, 'Legal Rights and Immigration Law', 'Provide insights into immigrants\' legal rights, immigration procedures, visa categories, green card processes, deportation laws, and pathways to citizenship.'),
(8, 'Immigration Statistics and Data Analysis', 'Present statistical data, research findings, and trends related to immigration flows, demographic shifts, migration patterns, and population projections.'),
(9, 'Immigration Advocacy and Activism', 'Highlight the work of advocacy organizations, grassroots movements, and activists working to promote immigrant rights, social justice, and comprehensive immigration reform.'),
(10, 'Immigration and Education', 'Explore the intersection of immigration and education, including access to education for immigrant children, language acquisition programs, higher education opportunities, and the role of education in immigrant integration.'),
(11, 'Global Perspectives on Immigration', 'Broaden the scope of discussion by examining immigration issues from a global perspective, including comparative analyses of immigration policies, case studies from different regions, and international migration trends.'),
(12, 'FAQs and Practical Tips for Immigrants', 'Offer practical advice, resources, and guidance for immigrants navigating the complexities of immigration processes, including visa applications, documentation requirements, and resettlement challenges.');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `post_like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liker_id` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_replies`
--

CREATE TABLE `post_replies` (
  `post_reply_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_reply` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_replies`
--

INSERT INTO `post_replies` (`post_reply_id`, `post_id`, `author_id`, `post_reply`, `created_at`) VALUES
(1, 1, 7, 'This is good to know', '1712597867'),
(2, 2, 7, 'Yes they have', '1712598185'),
(3, 3, 7, 'They will buy you Akara and bread to calm your nerves', '1712598231'),
(4, 2, 7, 'It has not started', '1712598411'),
(5, 4, 7, 'Tell me more on this', '1713527071'),
(6, 1, 7, 'Woow', '1713531415'),
(7, 4, 7, 'What will happen if my take-home na 50k?', '1713531574'),
(8, 1, 7, 'How much is DS-160 form now?', '1713531611'),
(9, 1, 7, '@ Cojo Nemanja!!! I think its about 250k now. Dollar hike don scatter my plans this year', '1713531777'),
(10, 1, 7, '@Cojo Nemanja!!! Just say you are not prepared for this year. Dont give me that dollar trash', '1713532109'),
(11, 1, 7, '@Cojo!!!! Why are you taking this personal?', '1713532136');

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
(5, 'Sandra', 'Okeh', 'iee2024', 'cisay17193@irnini.com', NULL, NULL, '1711013872', 'Uncompleted', 'Active'),
(6, 'Uchechukwu', 'Udo', 'iee2024', 'udoigweuchechukwu@gmail.com', NULL, NULL, '1711021338', 'Completed', 'Active'),
(7, 'Cojo', 'Nemanja', 'iee2024', 'cojoge6372@storesr.com', NULL, NULL, '1711256414', 'Completed', 'Active');

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
-- Table structure for table `usersubmissions`
--

CREATE TABLE `usersubmissions` (
  `SubmissionID` int(11) NOT NULL,
  `EvaluationID` int(11) NOT NULL,
  `CountryCriterionID` int(11) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersubmissions`
--

INSERT INTO `usersubmissions` (`SubmissionID`, `EvaluationID`, `CountryCriterionID`, `Score`) VALUES
(1, 1, 107, 10),
(2, 1, 112, 10),
(3, 1, 115, 4),
(4, 1, 119, 6),
(5, 1, 122, 0),
(6, 1, 124, 20),
(7, 2, 107, 10),
(8, 2, 114, 6),
(9, 2, 117, 8),
(10, 2, 120, 8),
(11, 2, 123, 12),
(12, 2, 124, 20),
(13, 3, 2, 8),
(14, 3, 6, 10),
(15, 3, 10, 6),
(16, 3, 14, 8),
(17, 3, 16, 0),
(18, 3, 258, 0),
(19, 4, 1, 10),
(20, 4, 7, 8),
(21, 4, 10, 6),
(22, 4, 13, 6),
(23, 4, 16, 0),
(24, 4, 255, 20),
(25, 5, 1, 10),
(26, 5, 7, 8),
(27, 5, 10, 6),
(28, 5, 14, 8),
(29, 5, 17, 12),
(30, 5, 255, 20),
(31, 6, 87, 8),
(32, 6, 92, 8),
(33, 6, 95, 6),
(34, 6, 98, 6),
(35, 6, 101, 0),
(36, 6, 104, 15),
(37, 7, 86, 10),
(38, 7, 91, 10),
(39, 7, 96, 8),
(40, 7, 98, 6),
(41, 7, 102, 12),
(42, 7, 103, 20),
(43, 8, 165, 20),
(44, 8, 181, 7),
(45, 8, 169, 6),
(46, 8, 171, 10),
(47, 8, 177, 15),
(48, 8, 175, 6),
(49, 9, 237, 20),
(50, 9, 251, 2),
(51, 9, 244, 12),
(52, 9, 247, 6),
(53, 9, 249, 15),
(54, 13, 4, 4),
(55, 13, 6, 10),
(56, 13, 11, 8),
(57, 13, 12, 4),
(58, 13, 16, 0),
(59, 13, 257, 10),
(60, 14, 5, 2),
(61, 14, 6, 10),
(62, 14, 11, 8),
(63, 14, 13, 6),
(64, 14, 16, 0),
(65, 14, 258, 0),
(66, 15, 5, 2),
(67, 15, 8, 6),
(68, 15, 9, 4),
(69, 15, 12, 4),
(70, 15, 16, 0),
(71, 15, 257, 10),
(72, 16, 5, 2),
(73, 16, 8, 6),
(74, 16, 11, 8),
(75, 16, 13, 6),
(76, 16, 17, 12),
(77, 16, 257, 10),
(78, 18, 1, 10),
(79, 18, 6, 10),
(80, 18, 11, 8),
(81, 18, 13, 6),
(82, 18, 17, 12),
(83, 18, 256, 15),
(84, 19, 5, 2),
(85, 19, 6, 10),
(86, 19, 11, 8),
(87, 19, 14, 8),
(88, 19, 17, 12),
(89, 19, 257, 10),
(90, 20, 4, 4),
(91, 20, 7, 8),
(92, 20, 9, 4),
(93, 20, 13, 6),
(94, 20, 16, 0),
(95, 20, 257, 10),
(96, 21, 128, 20),
(97, 21, 138, 15),
(98, 21, 141, 2),
(99, 21, 145, 10),
(100, 21, 131, 4),
(101, 21, 136, 15),
(102, 22, 129, 0),
(103, 22, 137, 10),
(104, 22, 141, 2),
(105, 22, 146, 0),
(106, 22, 130, 2),
(107, 22, 134, 10),
(108, 23, 5, 2),
(109, 23, 8, 6),
(110, 23, 11, 8),
(111, 23, 15, 10),
(112, 23, 16, 0),
(113, 23, 258, 0),
(114, 24, 1, 10),
(115, 24, 6, 10),
(116, 24, 10, 6),
(117, 24, 15, 10),
(118, 24, 17, 12),
(119, 24, 255, 20),
(120, 25, 18, 10),
(121, 25, 25, 6),
(122, 25, 26, 4),
(123, 25, 29, 4),
(124, 25, 34, 12),
(125, 26, 20, 6),
(126, 26, 23, 10),
(127, 26, 27, 6),
(128, 26, 29, 4),
(129, 26, 34, 12),
(130, 27, 3, 6),
(131, 27, 6, 10),
(132, 27, 11, 8),
(133, 27, 14, 8),
(134, 27, 16, 0),
(135, 27, 258, 0),
(136, 28, 4, 4),
(137, 28, 8, 6),
(138, 28, 11, 8),
(139, 28, 15, 10),
(140, 28, 17, 12),
(141, 28, 258, 0),
(142, 29, 5, 2),
(143, 29, 6, 10),
(144, 29, 11, 8),
(145, 29, 15, 10),
(146, 29, 16, 0),
(147, 29, 258, 0),
(148, 30, 183, 20),
(149, 30, 188, 8),
(150, 30, 191, 15),
(151, 30, 194, 8),
(152, 30, 196, 0),
(153, 30, 197, 2);

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
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_post_id`);

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
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`EvaluationID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ChoiceCountryCode` (`ChoiceCountryCode`),
  ADD KEY `ChoiceVisaCategoryID` (`ChoiceVisaCategoryID`);

--
-- Indexes for table `immigration_insights`
--
ALTER TABLE `immigration_insights`
  ADD PRIMARY KEY (`immigration_insight_id`),
  ADD KEY `visa_category_id` (`visa_category_id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `immigration_requirements`
--
ALTER TABLE `immigration_requirements`
  ADD PRIMARY KEY (`requirement_id`);

--
-- Indexes for table `personalinformation`
--
ALTER TABLE `personalinformation`
  ADD PRIMARY KEY (`personal_info_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_like_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `liker_id` (`liker_id`);

--
-- Indexes for table `post_replies`
--
ALTER TABLE `post_replies`
  ADD PRIMARY KEY (`post_reply_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `author_id` (`author_id`);

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
-- Indexes for table `usersubmissions`
--
ALTER TABLE `usersubmissions`
  ADD PRIMARY KEY (`SubmissionID`),
  ADD KEY `EvaluationID` (`EvaluationID`),
  ADD KEY `CountryCriterionID` (`CountryCriterionID`);

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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countrycriteria`
--
ALTER TABLE `countrycriteria`
  MODIFY `CountryCriterionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

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
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `EvaluationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `immigration_insights`
--
ALTER TABLE `immigration_insights`
  MODIFY `immigration_insight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `immigration_requirements`
--
ALTER TABLE `immigration_requirements`
  MODIFY `requirement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `personalinformation`
--
ALTER TABLE `personalinformation`
  MODIFY `personal_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `post_like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_replies`
--
ALTER TABLE `post_replies`
  MODIFY `post_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usersubmissions`
--
ALTER TABLE `usersubmissions`
  MODIFY `SubmissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

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
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_ibfk_1` FOREIGN KEY (`ChoiceCountryCode`) REFERENCES `countries` (`CountryCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluations_ibfk_2` FOREIGN KEY (`ChoiceVisaCategoryID`) REFERENCES `visacategories` (`VisaCategoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluations_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `immigration_insights`
--
ALTER TABLE `immigration_insights`
  ADD CONSTRAINT `immigration_insights_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`CountryCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `immigration_insights_ibfk_2` FOREIGN KEY (`visa_category_id`) REFERENCES `visacategories` (`VisaCategoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personalinformation`
--
ALTER TABLE `personalinformation`
  ADD CONSTRAINT `personalinformation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`post_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`liker_id`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_replies`
--
ALTER TABLE `post_replies`
  ADD CONSTRAINT `post_replies_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_replies_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userselection`
--
ALTER TABLE `userselection`
  ADD CONSTRAINT `userselection_ibfk_1` FOREIGN KEY (`CountryCriterionID`) REFERENCES `countrycriteria` (`CountryCriterionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `userselection_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `usersubmissions`
--
ALTER TABLE `usersubmissions`
  ADD CONSTRAINT `usersubmissions_ibfk_1` FOREIGN KEY (`CountryCriterionID`) REFERENCES `countrycriteria` (`CountryCriterionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usersubmissions_ibfk_2` FOREIGN KEY (`EvaluationID`) REFERENCES `evaluations` (`EvaluationID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
