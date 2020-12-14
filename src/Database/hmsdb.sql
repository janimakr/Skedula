-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 03:33 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` varchar(4) NOT NULL CHECK (substr(`AID`,1,1) = 'A'),
  `pwd` varchar(10) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `sName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `pwd`, `fName`, `sName`) VALUES
('A001', 'abcdefg78', 'Ragavendra', 'Goswami'),
('A002', 'cryptobit', 'Bhindu', 'Panikar'),
('A003', 'disledger', 'Suresh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adminmanipulate`
--

CREATE TABLE `adminmanipulate` (
  `AID` varchar(4) DEFAULT NULL,
  `MID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `docsch`
--

CREATE TABLE `docsch` (
  `SID` varchar(4) NOT NULL,
  `DocID` varchar(4) NOT NULL,
  `DocRep` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DocID` varchar(4) NOT NULL CHECK (substr(`DocID`,1,1) = 'D'),
  `pwd` varchar(10) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `sName` varchar(10) DEFAULT NULL,
  `Spec` varchar(3) NOT NULL,
  `stTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `maxToday` decimal(2,0) DEFAULT NULL CHECK (`maxToday` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DocID`, `pwd`, `fName`, `sName`, `Spec`, `stTime`, `endTime`, `maxToday`) VALUES
('D001', 'digimoney', 'Surya', 'Madhavan', 'PED', NULL, NULL, NULL),
('D002', 'digipregn', 'Kalyani', 'Vasudev', 'GYN', NULL, NULL, NULL),
('D003', 'digimassg', 'Subramaniyam', 'Santhosh', 'PHY', NULL, NULL, NULL),
('D004', 'digiskele', 'Jhon', 'Bhaskar', 'ORT', NULL, NULL, NULL),
('D005', 'digiskin', 'Vijay', 'Mahadevan', 'DER', NULL, NULL, NULL),
('D006', 'digialpha', 'Raj', 'Kapoor', 'ORT', NULL, NULL, NULL),
('D007', 'digitalise', 'Amit', 'Mishra', 'DER', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatID` varchar(4) NOT NULL CHECK (substr(`PatID`,1,1) = 'P'),
  `pwd` varchar(10) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `sName` varchar(10) DEFAULT NULL,
  `addrL1` varchar(100) NOT NULL,
  `addrL12` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patmob`
--

CREATE TABLE `patmob` (
  `PatID` varchar(4) NOT NULL,
  `MobNo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `RID` varchar(4) NOT NULL CHECK (substr(`RID`,1,1) = 'R'),
  `pwd` varchar(10) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `sName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`RID`, `pwd`, `fName`, `sName`) VALUES
('R001', 'Andromeda', 'Pranav', 'Nambiar'),
('R002', 'EqUinoxPhe', 'Jenny', 'Janima'),
('R003', 'constella', 'Sourabh', 'Dathan');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `SID` varchar(4) NOT NULL CHECK (substr(`SID`,1,1) = 'S'),
  `stTime` time NOT NULL,
  `PatID` varchar(4) NOT NULL,
  `DocID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `docsch`
--
ALTER TABLE `docsch`
  ADD PRIMARY KEY (`SID`,`DocID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DocID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatID`);

--
-- Indexes for table `patmob`
--
ALTER TABLE `patmob`
  ADD PRIMARY KEY (`PatID`,`MobNo`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`SID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
