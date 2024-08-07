-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 10:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'تهران', NULL, NULL),
(2, 'گیلان', NULL, NULL),
(3, 'آذربایجان شرقی', NULL, NULL),
(4, 'خوزستان', NULL, NULL),
(5, 'فارس', NULL, NULL),
(6, 'اصفهان', NULL, NULL),
(7, 'خراسان رضوی', NULL, NULL),
(8, 'قزوین', NULL, NULL),
(9, 'سمنان', NULL, NULL),
(10, 'قم', NULL, NULL),
(11, 'مرکزی', NULL, NULL),
(12, 'زنجان', NULL, NULL),
(13, 'مازندران', NULL, NULL),
(14, 'گلستان', NULL, NULL),
(15, 'اردبیل', NULL, NULL),
(16, 'آذربایجان غربی', NULL, NULL),
(17, 'همدان', NULL, NULL),
(18, 'کردستان', NULL, NULL),
(19, 'کرمانشاه', NULL, NULL),
(20, 'لرستان', NULL, NULL),
(21, 'بوشهر', NULL, NULL),
(22, 'کرمان', NULL, NULL),
(23, 'هرمزگان', NULL, NULL),
(24, 'چهارمحال و بختیاری', NULL, NULL),
(25, 'یزد', NULL, NULL),
(26, 'سیستان و بلوچستان', NULL, NULL),
(27, 'ایلام', NULL, NULL),
(28, 'کهگلویه و بویراحمد', NULL, NULL),
(29, 'خراسان شمالی', NULL, NULL),
(30, 'خراسان جنوبی', NULL, NULL),
(31, 'البرز', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
