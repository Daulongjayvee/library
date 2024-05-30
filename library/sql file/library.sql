-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:47 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Louise Vestal', 'vestal.danielle22@gmail.com', 'admin', 'e6e061838856bf47e1de730719fb2609', '2020-06-28 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'Abby Smith Rumsey', '2024-05-06 18:28:16', NULL),
(11, 'Deborah Lupton', '2024-05-06 18:29:07', NULL),
(12, 'Elias G. Carayannis et al', '2024-05-06 18:30:29', NULL),
(13, 'Frank Emmert-Streib, Salissou Moutari, and Matthias Dehmer', '2024-05-06 18:32:01', NULL),
(14, 'Franklin and Jenna Jambeck', '2024-05-06 18:32:17', NULL),
(15, 'Javed G. Hussain, Samuel Salia, and Jonathan M. Scott', '2024-05-06 18:32:34', NULL),
(16, 'Jingyuan Zhao et al', '2024-05-06 18:32:42', NULL),
(17, 'Raj K. Keservani et al', '2024-05-06 18:33:03', NULL),
(18, 'Sonja K. Pieck', '2024-05-06 18:33:13', NULL),
(19, 'Tomoko Tamari', '2024-05-06 18:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'Elements of Data Science, Machine Learning, and Artificial Intelligence Using R', 12, 13, 2147483647, NULL, '2024-05-06 19:00:32', NULL),
(5, 'Entrepreneurial Financial Resilience and Financial Innovation in a Turbulent Era', 9, 15, 2147483647, NULL, '2024-05-06 19:02:17', NULL),
(6, 'Handbook of Research on Advancements in AI and IoT Convergence Technologies', 9, 16, 2147483647, NULL, '2024-05-06 19:04:07', NULL),
(7, 'Human Perception and Digital Info Technologies: Animation, the Body and Affect', 10, 19, 2147483647, NULL, '2024-05-06 19:06:33', NULL),
(8, 'Memory, Edited: Taking Liberties with History', 8, 10, 2147483647, NULL, '2024-05-06 19:08:15', NULL),
(9, 'Mnemonic Ecologies: Memory and Nature Conservation along the Former Iron Curtain', 8, 18, 2147483647, NULL, '2024-05-06 19:12:13', NULL),
(10, 'Plastics', 11, 14, 2147483647, NULL, '2024-05-06 19:12:54', NULL),
(11, 'The Elgar Companion to Digital Transformation, Artificial Intelligence and Innovation in the Economy, Society and Democracy ', 12, 12, 2147483647, NULL, '2024-05-06 19:13:48', NULL),
(12, 'The Internet of Animals: Human-Animals Relationships in the Digital Age', 10, 11, 2147483647, NULL, '2024-05-06 19:14:33', NULL),
(13, 'The Metabolic Syndrome: Dietary Supplements and Food Ingredients', 11, 17, 2147483647, NULL, '2024-05-06 19:15:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Arts and Humanities', 1, '2024-05-06 18:21:31', '0000-00-00 00:00:00'),
(9, 'Management', 1, '2024-05-06 18:22:33', '0000-00-00 00:00:00'),
(10, 'Multidisciplinary Studies', 1, '2024-05-06 18:22:49', '0000-00-00 00:00:00'),
(11, 'Natural Science', 1, '2024-05-06 18:23:04', '0000-00-00 00:00:00'),
(12, 'Technology', 1, '2024-05-06 18:35:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentId` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `Action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `Action`) VALUES (1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0), (2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5), (3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL), (4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2), (5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL), (6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'Lalisa Manoban', 'lalisa@gmail.com', '956374652', '1614368cb9c215e0810ce76733e42162', 1, '2024-05-06 19:38:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Louise Vestal', 'vestal.danielle22@gmail.com', 'admin', 'e6e061838856bf47e1de730719fb2609', '2020-06-28 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'Abby Smith Rumsey', '2024-05-06 18:28:16', NULL),
(11, 'Deborah Lupton', '2024-05-06 18:29:07', NULL),
(12, 'Elias G. Carayannis et al', '2024-05-06 18:30:29', NULL),
(13, 'Frank Emmert-Streib, Salissou Moutari, and Matthias Dehmer', '2024-05-06 18:32:01', NULL),
(14, 'Franklin and Jenna Jambeck', '2024-05-06 18:32:17', NULL),
(15, 'Javed G. Hussain, Samuel Salia, and Jonathan M. Scott', '2024-05-06 18:32:34', NULL),
(16, 'Jingyuan Zhao et al', '2024-05-06 18:32:42', NULL),
(17, 'Raj K. Keservani et al', '2024-05-06 18:33:03', NULL),
(18, 'Sonja K. Pieck', '2024-05-06 18:33:13', NULL),
(19, 'Tomoko Tamari', '2024-05-06 18:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'Elements of Data Science, Machine Learning, and Artificial Intelligence Using R', 12, 13, 2147483647, NULL, '2024-05-06 19:00:32', NULL),
(5, 'Entrepreneurial Financial Resilience and Financial Innovation in a Turbulent Era', 9, 15, 2147483647, NULL, '2024-05-06 19:02:17', NULL),
(6, 'Handbook of Research on Advancements in AI and IoT Convergence Technologies', 9, 16, 2147483647, NULL, '2024-05-06 19:04:07', NULL),
(7, 'Human Perception and Digital Info Technologies: Animation, the Body and Affect', 10, 19, 2147483647, NULL, '2024-05-06 19:06:33', NULL),
(8, 'Memory, Edited: Taking Liberties with History', 8, 10, 2147483647, NULL, '2024-05-06 19:08:15', NULL),
(9, 'Mnemonic Ecologies: Memory and Nature Conservation along the Former Iron Curtain', 8, 18, 2147483647, NULL, '2024-05-06 19:12:13', NULL),
(10, 'Plastics', 11, 14, 2147483647, NULL, '2024-05-06 19:12:54', NULL),
(11, 'The Elgar Companion to Digital Transformation, Artificial Intelligence and Innovation in the Economy, Society and Democracy ', 12, 12, 2147483647, NULL, '2024-05-06 19:13:48', NULL),
(12, 'The Internet of Animals: Human-Animals Relationships in the Digital Age', 10, 11, 2147483647, NULL, '2024-05-06 19:14:33', NULL),
(13, 'The Metabolic Syndrome: Dietary Supplements and Food Ingredients', 11, 17, 2147483647, NULL, '2024-05-06 19:15:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Arts and Humanities', 1, '2024-05-06 18:21:31', '0000-00-00 00:00:00'),
(9, 'Management', 1, '2024-05-06 18:22:33', '0000-00-00 00:00:00'),
(10, 'Multidisciplinary Studies', 1, '2024-05-06 18:22:49', '0000-00-00 00:00:00'),
(11, 'Natural Science', 1, '2024-05-06 18:23:04', '0000-00-00 00:00:00'),
(12, 'Technology', 1, '2024-05-06 18:35:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentId` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `Action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `Action`) VALUES (1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0), (2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5), (3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL), (4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2), (5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL), (6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'Lalisa Manoban', 'lalisa@gmail.com', '956374652', '1614368cb9c215e0810ce76733e42162', 1, '2024-05-06 19:38:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
