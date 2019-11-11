-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 07:43 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitmascot`
--

-- --------------------------------------------------------

--
-- Table structure for table `saved_email`
--

CREATE TABLE `saved_email` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved_email`
--

INSERT INTO `saved_email` (`id`, `version`, `password`, `email`) VALUES
(1, 0, '1234', 'nazmul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `update_password`
--

CREATE TABLE `update_password` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `confermpass` varchar(30) DEFAULT NULL,
  `prepassword` varchar(30) DEFAULT NULL,
  `newpassword` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthdate` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `version`, `phone`, `address`, `birthdate`, `password`, `lastname`, `firstname`, `email`) VALUES
(1, 0, '12456789', 'Mohakhali DOSH', '01/01/2000', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Mr', 'admin@localhost.local'),
(2, 0, '+8801743414772', 'Comilla University', '01/01/2000', '912ec803b2ce49e4a541068d495ab570', 'Hosen', 'Sakhawat', 'csecou134@gmail.com'),
(3, 0, '1234355', 'Dhaka', '11/08/2019', '81dc9bdb52d04dc20036dbd8313ed055', 'Hossain', 'Nazmul', 'nazmul@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saved_email`
--
ALTER TABLE `saved_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_password`
--
ALTER TABLE `update_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saved_email`
--
ALTER TABLE `saved_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `update_password`
--
ALTER TABLE `update_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
