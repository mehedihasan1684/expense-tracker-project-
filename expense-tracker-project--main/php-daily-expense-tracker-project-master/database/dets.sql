-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 05:38 AM
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
-- Database: `dets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `expense_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblexpenses`
--

INSERT INTO `tblexpenses` (`id`, `user_id`, `expense_date`, `expense_item`, `cost`, `note_date`) VALUES
(2, 4, '2022-05-12', 'Groceriesgff', '3005', '2022-05-18 13:15:03'),
(24, 3, '2022-05-15', 'Uber', '3000', '2022-05-15 13:15:20'),
(25, 3, '2022-05-15', 'Medications', '5000', '2022-05-15 13:15:36'),
(26, 3, '2022-05-17', 'Electric Bill', '1200', '2022-05-19 10:03:29'),
(27, 3, '2022-05-18', 'Water Bill', '2000', '2022-05-19 10:03:52'),
(28, 3, '2022-05-17', 'House Rent', '12000', '2022-05-19 10:04:13'),
(29, 3, '2022-05-17', 'Groceries', '3000', '2022-05-19 10:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `name`, `email`, `mobile_number`, `password`, `reg_date`) VALUES
(3, 'mehedi hasan', 'mehedi17950@gmail.com', '01889377179', '6a25fab39163c0b08163066164fdfc3e', '2022-05-15 13:08:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
