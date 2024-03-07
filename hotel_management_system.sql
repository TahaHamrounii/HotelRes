-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 01:29 AM
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
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'IG WEBDEV', 'IG WEBDEV Discover The Perfect Balance Of Hospitality, Luxury And Comfort. We are focused on providing clients with the highest level of comfort and excellent affordable rates', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `idUtilisateur` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email_mob` varchar(150) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `phonenum` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `datentime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`idUtilisateur`, `name`, `email_mob`, `address`, `phonenum`, `dob`, `password`, `status`, `datentime`) VALUES
(0, NULL, 'admin@email.com', NULL, NULL, NULL, 'admin', 1, '2024-03-06 22:25:29'),
(1, 'John Doe', 'john.doe@example.com', '123 Main St', '123-456-7890', '1990-01-01', 'password123', 0, '2024-03-06 12:00:00'),
(2, 'Jane Smith', 'jane.smith@example.com', '456 Oak St', '987-654-3210', '1985-05-15', 'pass456', 0, '2024-03-06 12:05:00'),
(4, 'a', 'a', 'a', '1', '0001-11-11', 'a', 0, '2024-03-06 12:15:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
