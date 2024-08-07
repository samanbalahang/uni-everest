-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2024 at 05:34 AM
-- Server version: 5.7.36-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unievere_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `usersignal`
--

CREATE TABLE `usersignal` (
  `id` int(11) NOT NULL,
  `karbar_id` int(11) DEFAULT NULL,
  `method_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `mellicode` varchar(191) DEFAULT NULL,
  `tozihat` text,
  `birthDay` varchar(191) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `field` varchar(191) DEFAULT NULL,
  `fieldLevel` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `lead` int(11) DEFAULT NULL,
  `request` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersignal`
--

INSERT INTO `usersignal` (`id`, `karbar_id`, `method_id`, `course_id`, `fname`, `lname`, `mobile`, `mellicode`, `tozihat`, `birthDay`, `Age`, `gender`, `field`, `fieldLevel`, `state`, `city`, `area`, `lead`, `request`, `created_at`, `updated_at`) VALUES
(1, 1, 54, 2, 'محسن', 'تنابنده', '0900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, 54, NULL, '2024-05-27 04:15:38', '2024-05-27 04:36:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usersignal`
--
ALTER TABLE `usersignal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usersignal`
--
ALTER TABLE `usersignal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
