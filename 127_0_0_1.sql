-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 08:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cit_crud`
--
CREATE DATABASE IF NOT EXISTS `cit_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cit_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL,
  `todo_time` datetime NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `todo`, `todo_time`, `status`, `created_at`, `updated_at`) VALUES
(2, 'hello', '2024-09-15 00:00:00', 0, '2024-09-15 06:36:45', '2024-09-15 06:37:01'),
(3, 'hello_1', '2024-09-22 00:00:00', 0, '2024-09-15 06:37:10', '2024-09-15 06:37:10'),
(4, 'Yue Nian Yong', '2024-09-27 00:00:00', 0, '2024-09-15 06:37:28', '2024-09-15 06:37:28'),
(5, 'Project due date', '2024-09-27 00:00:00', 0, '2024-09-15 06:37:44', '2024-09-15 06:37:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
