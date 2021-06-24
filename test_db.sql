-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 06:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acts`
--

CREATE TABLE `acts` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acts`
--

INSERT INTO `acts` (`id`, `username`, `activity`, `time`) VALUES
(15, 'kent', 'LogIn', '2021-05-04 14:00:00'),
(16, 'kent', 'LogOut', '2021-05-04 14:00:08'),
(17, 'kent09', 'ChangePassword', '2021-05-04 17:34:19'),
(18, 'kent', 'ChangePassword', '2021-05-04 17:34:51'),
(19, 'kent09', 'LogIn', '2021-05-04 17:36:49'),
(20, 'kent09', 'LogOut', '2021-05-04 17:37:04'),
(21, 'kent09', 'ChangePassword', '2021-05-04 17:37:21'),
(22, 'kent', 'LogIn', '2021-05-18 11:40:03'),
(23, 'kent', 'LogOut', '2021-05-18 11:45:06'),
(24, 'kent', 'LogIn', '2021-05-18 11:45:39'),
(25, 'kent', 'LogOut', '2021-05-18 11:45:42'),
(26, 'kent09', 'LogIn', '2021-05-18 11:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(47, 'kent', 'bosskent321', 'harinakent@gmail.com'),
(48, 'kent09', 'bosskent09', 'kentsimon.harina@cvsu.edu.ph');

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `otp` int(10) NOT NULL,
  `curdate` varchar(50) NOT NULL,
  `endate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` (`id`, `username`, `otp`, `curdate`, `endate`) VALUES
(19, 'kent', 668428, '2021-05-04 13:59:54', '2021-05-04 14:04:54'),
(20, 'kent', 244321, '2021-05-04 17:36:41', '2021-05-04 17:41:41'),
(21, 'kent', 419013, '2021-05-18 11:39:20', '2021-05-18 11:44:20'),
(22, 'kent', 642711, '2021-05-18 11:39:58', '2021-05-18 11:44:58'),
(23, 'kent', 230957, '2021-05-18 11:45:34', '2021-05-18 11:50:34'),
(24, 'kent09', 452993, '2021-05-18 11:55:40', '2021-05-18 12:00:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acts`
--
ALTER TABLE `acts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acts`
--
ALTER TABLE `acts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
