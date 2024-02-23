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
-- Database: `ex5`
--

-- --------------------------------------------------------

--
-- Table structure for table `advancedocument`
--

CREATE TABLE `advancedocument` (
  `AdvanceID` int(10) NOT NULL,
  `DocumentID` int(10) NOT NULL,
  `Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advancedocument`
--

INSERT INTO `advancedocument` (`AdvanceID`, `DocumentID`, `Amount`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `DocumentID` int(10) NOT NULL,
  `CreatorID` int(10) NOT NULL,
  `RequesterID` int(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `DocumentNo` varchar(20) NOT NULL,
  `DocumentDate` date NOT NULL,
  `ReferenceNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`DocumentID`, `CreatorID`, `RequesterID`, `Subject`, `DocumentNo`, `DocumentDate`, `ReferenceNo`) VALUES
(1, 1, 1, 'ปฏิบัติงานสยามคราฟท์ 10/7/56', 'EXD-09001306850', '2013-07-11', ''),
(2, 2, 2, 'รับรอง อ.ที่ปรึกษา P3 C4', 'EXD-72501304596', '2013-07-11', ''),
(3, 3, 3, 'ค่าอาหาร/ผลไม้รับรองประชุมCOO 10ก.ค.56@TCT สระบุรี', 'EXD-00201308307', '2013-07-11', 'ADV-00201300328');

-- --------------------------------------------------------

--
-- Table structure for table `fnexpensedocument`
--

CREATE TABLE `fnexpensedocument` (
  `ExpenseID` int(10) NOT NULL,
  `DocumentID` int(10) NOT NULL,
  `DifferenceAmount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fnexpensedocument`
--

INSERT INTO `fnexpensedocument` (`ExpenseID`, `DocumentID`, `DifferenceAmount`) VALUES
(1, 1, 150),
(2, 2, 7749),
(3, 3, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `fnremittance`
--

CREATE TABLE `fnremittance` (
  `RemittanceID` int(10) NOT NULL,
  `DocumentID` int(10) NOT NULL,
  `TotalAmount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fnremittance`
--

INSERT INTO `fnremittance` (`RemittanceID`, `DocumentID`, `TotalAmount`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suuser`
--

CREATE TABLE `suuser` (
  `UserID` int(10) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suuser`
--

INSERT INTO `suuser` (`UserID`, `EmployeeName`) VALUES
(1, 'พชร โอมพรนุวัตน์'),
(2, 'นายเกษร เจริญสุข'),
(3, 'พรประภา จันทิมางกูร'),
(4, 'สิริ อัดโสภณ'),
(5, 'ศิริพร แซ่จัง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advancedocument`
--
ALTER TABLE `advancedocument`
  ADD PRIMARY KEY (`AdvanceID`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `fnexpensedocument`
--
ALTER TABLE `fnexpensedocument`
  ADD PRIMARY KEY (`ExpenseID`);

--
-- Indexes for table `fnremittance`
--
ALTER TABLE `fnremittance`
  ADD PRIMARY KEY (`RemittanceID`);

--
-- Indexes for table `suuser`
--
ALTER TABLE `suuser`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
