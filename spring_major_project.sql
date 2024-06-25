-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_major_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookorder`
--

CREATE TABLE `bookorder` (
  `orderId` int(11) NOT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `sPName` varchar(255) DEFAULT NULL,
  `serviceDesc` varchar(255) DEFAULT NULL,
  `serviceType` varchar(255) DEFAULT NULL,
  `spContact` varchar(255) DEFAULT NULL,
  `uContact` varchar(255) DEFAULT NULL,
  `uEmail` varchar(255) DEFAULT NULL,
  `uName` varchar(255) DEFAULT NULL,
  `spEmail` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookorder`
--

INSERT INTO `bookorder` (`orderId`, `Date`, `Time`, `sPName`, `serviceDesc`, `serviceType`, `spContact`, `uContact`, `uEmail`, `uName`, `spEmail`, `Status`) VALUES
(114, '2024-02-11', '4 pm', 'Janhavi', 'For selling materials', 'Wholesale', '9744556699', '7558261481', 'taru@gmail.com', 'tarini', 'j@gmail.com', 'Approved'),
(123, '12-06-24', '3 pm', 'Nikita Sarode', 'For family trip', 'Travels', '9612345060', '7558261481', 'taru@gmail.com', 'tarini', 'nikks@gmail.com', 'Pending'),
(228, '5-8-24', '6 pm', 'Sanay', 'urgent treatment', 'Medical', '9033445588', '7558261481', 'taru@gmail.com', 'tarini', 'sanu@gmail.com', 'Disapproved'),
(456, '12-02-24', '3 pm', 'Nikita Sarode', 'for family trip', 'Travels', '9612345060', '7558261481', 'taru@gmail.com', 'tarini', 'nikks@gmail.com', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `spinfo`
--

CREATE TABLE `spinfo` (
  `spEmail` varchar(255) NOT NULL,
  `cTime` varchar(255) DEFAULT NULL,
  `oTime` varchar(255) DEFAULT NULL,
  `serviceType` varchar(255) DEFAULT NULL,
  `spAddress` varchar(255) DEFAULT NULL,
  `spAge` int(11) NOT NULL,
  `spArea` varchar(255) DEFAULT NULL,
  `spCity` varchar(255) DEFAULT NULL,
  `spContact` varchar(255) DEFAULT NULL,
  `spLat` float NOT NULL,
  `spLong` float NOT NULL,
  `spName` varchar(255) DEFAULT NULL,
  `spPassword` varchar(255) DEFAULT NULL,
  `spPin` int(11) NOT NULL,
  `spCategory` varchar(255) DEFAULT NULL,
  `spStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spinfo`
--

INSERT INTO `spinfo` (`spEmail`, `cTime`, `oTime`, `serviceType`, `spAddress`, `spAge`, `spArea`, `spCity`, `spContact`, `spLat`, `spLong`, `spName`, `spPassword`, `spPin`, `spCategory`, `spStatus`) VALUES
('j@gmail.com', '7 pm', '10 am', 'Wholesale', 'aasdfvsdaf', 33, 'Shahada', 'Nandurbar', '9744556699', 21.5369, 74.4452, 'Janhavi', '1411', 425412, 'retailers', 'Approved'),
('nikks@gmail.com', '11 pm', '9 am', 'Travels', 'pqr', 27, 'adb', 'Nashik', '9612345060', 20.1183, 73.7907, 'Nikita Sarode', '6789', 422001, 'logistics', 'Disapproved'),
('sai@gmail.com', '10 pm', '7 am', 'Cab Services', 'Shingada talav', 34, 'Renuka nagar', 'nashik', '9012345678', 19.993, 73.7868, 'Sai Patil', '5678', 422001, 'logistics', 'Pending'),
('sanu@gmail.com', '10 pm', '7 am', 'Medical', 'rstuv', 38, 'Dhule', 'Dhule', '9033445588', 20.6179, 73.9503, 'Sanay', '2208', 435416, 'healthcare', 'Approved'),
('t@gmail.com', '9 pm', '8 am', 'Pharmacist', 'karan chauphuli', 30, 'abc colony', 'Nandurbar', '9422334466', 20.1183, 73.7907, 'Tanaya', '7788', 425412, 'healthcare', 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `uContact` double NOT NULL,
  `uAddress` varchar(255) DEFAULT NULL,
  `uCity` varchar(255) DEFAULT NULL,
  `uEmail` varchar(255) DEFAULT NULL,
  `uName` varchar(255) DEFAULT NULL,
  `uPassword` varchar(255) DEFAULT NULL,
  `uPin` varchar(255) NOT NULL,
  `uStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`uContact`, `uAddress`, `uCity`, `uEmail`, `uName`, `uPassword`, `uPin`, `uStatus`) VALUES
(7558261481, 'patonda', 'Ndb', 'taru@gmail.com', 'Tarini', '1234', '425412', 'Approved'),
(9823665662, 'xyz', 'Nashik', 'sai@gmail.com', 'Sai', '3456', '406325', 'Disapproved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookorder`
--
ALTER TABLE `bookorder`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `spinfo`
--
ALTER TABLE `spinfo`
  ADD PRIMARY KEY (`spEmail`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`uContact`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
