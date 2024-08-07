-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 10:11 AM
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
-- Table structure for table `kaebaran`
--

CREATE TABLE `kaebaran` (
  `id` int(11) NOT NULL,
  `karbar_name` varchar(191) NOT NULL,
  `karbar_lname` varchar(191) NOT NULL,
  `karbar_phone` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `karbar_role` int(11) NOT NULL,
  `active` tinyint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kaebaran`
--

INSERT INTO `kaebaran` (`id`, `karbar_name`, `karbar_lname`, `karbar_phone`, `password`, `karbar_role`, `active`, `created_at`, `updated_at`) VALUES
(6, 'تست', 'تست', '09224194485', '7160098', 0, 1, '2024-05-01 08:05:44', '2024-05-14 02:30:11'),
(7, 'khalili', 'خانم خلیلی', '0934167486', '0934167486', 2, 1, '2024-05-06 06:38:54', '2024-05-12 11:31:36'),
(10, 'آخرین تست', 'آخرین تست', '09224194485', '5487407', 2, 1, '2024-05-18 06:13:31', '2024-05-18 06:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kaebaran`
--
ALTER TABLE `kaebaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kaebaran`
--
ALTER TABLE `kaebaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
