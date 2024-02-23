-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 11:15 AM
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
-- Database: `ex4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_region`
--

CREATE TABLE `tb_region` (
  `RegionID` int(4) NOT NULL,
  `RegionDescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_region`
--

INSERT INTO `tb_region` (`RegionID`, `RegionDescription`) VALUES
(1, 'Jon Dev'),
(2, 'Naja');

-- --------------------------------------------------------

--
-- Table structure for table `tb_territories`
--

CREATE TABLE `tb_territories` (
  `TernitoryID` varchar(20) NOT NULL,
  `TernitoryDescription` varchar(50) NOT NULL,
  `RegionID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_territories`
--

INSERT INTO `tb_territories` (`TernitoryID`, `TernitoryDescription`, `RegionID`) VALUES
('A01', 'Hello', 1),
('A02', 'Hi', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_region`
--
ALTER TABLE `tb_region`
  ADD PRIMARY KEY (`RegionID`);

--
-- Indexes for table `tb_territories`
--
ALTER TABLE `tb_territories`
  ADD PRIMARY KEY (`TernitoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
