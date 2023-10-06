-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 06:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `srms`.`userinfo` (`id` INT(255) NOT NULL AUTO_INCREMENT , `username` VARCHAR(255) NOT NULL , `email` VARCHAR(255) NOT NULL , `mobile` VARCHAR(10) , `comment` VARCHAR(255) , PRIMARY KEY (`id`)) ENGINE = InnoDB; 

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'Second', 2, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(4, 'Fourth', 4, 'C', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(5, 'Sixth', 6, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(6, 'Sixth', 6, 'B', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(7, 'Seventh', 7, 'B', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(8, 'Eight', 8, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(9, 'Tenth', 10, 'A', '2022-01-01 15:17:32', NULL),
(10, 'Third', 3, 'c', '2023-09-29 15:45:13', NULL),
(11, 'FYBCA', 1, 'BCA', '2023-09-29 15:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(5, 'PLACEMENT CELL', 'Interview schedule for those students who have filed the Google form for campus interviews.\r\nMake sure you bring with yourself 2 copies of resume.\r\n', '2023-09-29 15:47:51'),
(6, 'PROJECT SUBMISSION', 'Students be ready with your projects as till the last lecture we have completed our coding part, only our documentation is remaining.\r\n\r\nFinal project Submission date -30 sept 2023\r\n\r\non 30 Sept, we will have 2 lectures, so in that time we\'ll practice for project viva.', '2023-09-29 15:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2022-01-01 10:30:57', NULL),
(3, 1, 1, 1, 80, '2022-01-01 10:30:57', NULL),
(4, 1, 1, 5, 78, '2022-01-01 10:30:57', NULL),
(5, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL),
(6, 2, 4, 2, 90, '2022-01-01 10:30:57', NULL),
(7, 2, 4, 1, 75, '2022-01-01 10:30:57', NULL),
(8, 2, 4, 5, 56, '2022-01-01 10:30:57', NULL),
(9, 2, 4, 4, 80, '2022-01-01 10:30:57', NULL),
(10, 4, 7, 2, 54, '2022-01-01 10:30:57', NULL),
(11, 4, 7, 1, 85, '2022-01-01 10:30:57', NULL),
(12, 4, 7, 5, 55, '2022-01-01 10:30:57', NULL),
(13, 4, 7, 7, 65, '2022-01-01 10:30:57', NULL),
(14, 5, 8, 2, 75, '2022-01-01 10:30:57', NULL),
(15, 5, 8, 1, 56, '2022-01-01 10:30:57', NULL),
(16, 5, 8, 5, 52, '2022-01-01 10:30:57', NULL),
(17, 5, 8, 4, 80, '2022-01-01 10:30:57', NULL),
(18, 6, 9, 8, 80, '2022-01-01 15:20:18', NULL),
(19, 6, 9, 8, 70, '2022-01-01 15:20:18', NULL),
(20, 6, 9, 2, 90, '2022-01-01 15:20:18', NULL),
(21, 6, 9, 1, 60, '2022-01-01 15:20:18', NULL),
(22, 7, 11, 11, 60, '2023-09-29 15:55:13', NULL),
(23, 7, 11, 14, 65, '2023-09-29 15:55:13', NULL),
(24, 7, 11, 13, 45, '2023-09-29 15:55:13', NULL),
(25, 7, 11, 12, 70, '2023-09-29 15:55:13', NULL),
(26, 8, 11, 11, 90, '2023-09-29 16:02:37', NULL),
(27, 8, 11, 14, 85, '2023-09-29 16:02:37', NULL),
(28, 8, 11, 13, 89, '2023-09-29 16:02:37', NULL),
(29, 8, 11, 12, 95, '2023-09-29 16:02:37', NULL),
(30, 8, 11, 15, 93, '2023-09-29 16:02:37', NULL),
(31, 10, 11, 11, 30, '2023-09-29 16:02:59', NULL),
(32, 10, 11, 14, 20, '2023-09-29 16:02:59', NULL),
(33, 10, 11, 13, 45, '2023-09-29 16:02:59', NULL),
(34, 10, 11, 12, 50, '2023-09-29 16:02:59', NULL),
(35, 10, 11, 15, 33, '2023-09-29 16:02:59', NULL),
(36, 9, 11, 11, 89, '2023-09-29 16:03:23', NULL),
(37, 9, 11, 14, 78, '2023-09-29 16:03:23', NULL),
(38, 9, 11, 13, 76, '2023-09-29 16:03:23', NULL),
(39, 9, 11, 12, 90, '2023-09-29 16:03:23', NULL),
(40, 9, 11, 15, 45, '2023-09-29 16:03:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2022-01-01 10:30:57', NULL, 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2022-01-01 10:30:57', NULL, 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2022-01-01 10:30:57', NULL, 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2022-01-01 10:30:57', NULL, 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2022-01-01 10:30:57', NULL, 1),
(6, 'Shiv Gupta', '12345', 'shiv34534@gmail.com', 'Male', '2007-01-12', 9, '2022-01-01 15:19:40', NULL, 1),
(7, 'Samir Yasin Shaikh', '101', 'shaikh@gmail.com', 'Male', '2004-02-01', 11, '2023-09-29 15:53:30', NULL, 1),
(8, 'Abuzar Sageer Shah', '102', 'shah@gmail.com', 'Male', '2002-02-01', 11, '2023-09-29 15:58:44', NULL, 1),
(9, 'Aman Ali Shaikh', '103', 'aman@gmail.com', 'Male', '2002-06-05', 11, '2023-09-29 15:59:27', NULL, 1),
(10, 'Adnan Samsher Pathan', '105', 'adnan@gmail.com', 'Male', '2000-08-02', 11, '2023-09-29 16:00:03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2022-01-01 10:30:57', '2023-09-29 15:53:52'),
(4, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(8, 4, 4, 1, '2022-01-01 10:30:57', NULL),
(10, 4, 1, 1, '2022-01-01 10:30:57', NULL),
(12, 4, 2, 1, '2022-01-01 10:30:57', NULL),
(13, 4, 5, 1, '2022-01-01 10:30:57', NULL),
(14, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(15, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(16, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(17, 6, 6, 1, '2022-01-01 10:30:57', NULL),
(18, 7, 1, 1, '2022-01-01 10:30:57', NULL),
(19, 7, 7, 1, '2022-01-01 10:30:57', NULL),
(20, 7, 2, 1, '2022-01-01 10:30:57', NULL),
(21, 7, 6, 1, '2022-01-01 10:30:57', NULL),
(22, 7, 5, 0, '2022-01-01 10:30:57', NULL),
(23, 8, 1, 1, '2022-01-01 10:30:57', NULL),
(24, 8, 2, 1, '2022-01-01 10:30:57', NULL),
(25, 8, 4, 1, '2022-01-01 10:30:57', NULL),
(26, 8, 6, 1, '2022-01-01 10:30:57', NULL),
(27, 8, 5, 0, '2022-01-01 10:30:57', NULL),
(28, 9, 1, 1, '2022-01-01 15:18:40', NULL),
(29, 9, 2, 1, '2022-01-01 15:18:43', NULL),
(30, 9, 8, 1, '2022-01-01 15:18:48', NULL),
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL),
(32, 11, 11, 1, '2023-09-29 15:51:57', NULL),
(33, 11, 12, 1, '2023-09-29 15:54:33', NULL),
(34, 11, 13, 1, '2023-09-29 15:54:39', NULL),
(35, 11, 14, 1, '2023-09-29 15:54:46', NULL),
(36, 11, 15, 1, '2023-09-29 16:01:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2022-01-01 10:30:57', NULL),
(2, 'English', 'ENG11', '2022-01-01 10:30:57', NULL),
(4, 'Science', 'SC1', '2022-01-01 10:30:57', NULL),
(5, 'Music', 'MS', '2022-01-01 10:30:57', NULL),
(6, 'Social Studies', 'SS08', '2022-01-01 10:30:57', NULL),
(7, 'Physics', 'PH03', '2022-01-01 10:30:57', NULL),
(8, 'Chemistry', 'CH65', '2022-01-01 10:30:57', NULL),
(11, 'C++', '041', '2023-09-29 15:51:14', NULL),
(12, 'Python ', '042', '2023-09-29 15:51:21', NULL),
(13, 'PHP', '043', '2023-09-29 15:51:35', NULL),
(14, 'JAVA', '044', '2023-09-29 15:51:41', NULL),
(15, 'Web development', '045', '2023-09-29 16:01:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
