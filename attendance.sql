-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 05:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `hsmc402`
--

CREATE TABLE `hsmc402` (
  `Name` int(11) NOT NULL,
  `enroll` int(11) NOT NULL,
  `sec` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hsmc402`
--

INSERT INTO `hsmc402` (`Name`, `enroll`, `sec`, `roll`, `email`, `phone`) VALUES
(0, 2147483647, 0, 10, 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `pcccs401`
--

CREATE TABLE `pcccs401` (
  `Name` varchar(50) NOT NULL,
  `enroll` varchar(50) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `roll` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcccs401`
--

INSERT INTO `pcccs401` (`Name`, `enroll`, `sec`, `roll`, `email`, `phone`) VALUES
('Alekhya Nandy', '12019009001250', 'D', '4', 'nandyargha01@gmail.com', '8902046040'),
('Alekhya Nandy', '12019009001250', 'D', '4', 'nandyargha01@gmail.com', '8902046040');

-- --------------------------------------------------------

--
-- Table structure for table `pcccs402`
--

CREATE TABLE `pcccs402` (
  `Name` varchar(50) NOT NULL,
  `enroll` varchar(50) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcccs402`
--

INSERT INTO `pcccs402` (`Name`, `enroll`, `sec`, `roll`, `email`, `phone`) VALUES
('Alekhya Nandy', '12019009001250', 'D', '4', 'nandyargha01@gmail.com', '8902046040'),
('Alekhya Nandy', '12019009001250', 'E', '10', 'nandyargha01@gmail.com', '9903210648');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
