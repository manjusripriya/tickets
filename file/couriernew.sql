-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2017 at 08:25 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `couriernew`
--
CREATE DATABASE IF NOT EXISTS `couriernew` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `couriernew`;

-- --------------------------------------------------------

--
-- Table structure for table `courierdetails`
--

CREATE TABLE IF NOT EXISTS `courierdetails` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `courierno` int(10) NOT NULL,
  `sendername` varchar(30) NOT NULL,
  `courierdetails` varchar(50) NOT NULL,
  `sendermobileno` varchar(14) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `senderdate` varchar(20) NOT NULL,
  `sendertime` varchar(10) NOT NULL,
  `receivername` varchar(20) NOT NULL,
  `receivermobileno` varchar(14) NOT NULL,
  `receiverdate` varchar(10) NOT NULL,
  `receivedtime` varchar(10) NOT NULL,
  `description` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `courierdetails`
--

INSERT INTO `courierdetails` (`sno`, `courierno`, `sendername`, `courierdetails`, `sendermobileno`, `branch`, `senderdate`, `sendertime`, `receivername`, `receivermobileno`, `receiverdate`, `receivedtime`, `description`, `status`) VALUES
(1, 1234, 'lee', 'dgd', '81271627', 'lee-Dispat', '01-03-17', '18:01:24pm', 'sasi', '675656567', '01-03-2017', '18:01:54pm', 'almost', 'Received'),
(2, 46, 'sasi', 'fgsdfg', '895656', 'sasi-HO', '01-03-17', '18:04:27pm', 'ram', 'afdsdaf', '01-03-2017', '18:17:05pm', 'i need one more file', 'Received'),
(3, 2345, 'arjun', 'fhfh', '789456321', 'arjun-Disp', '01-03-17', '18:47:31pm', 'sasi', '524242', '02-03-2017', '10:25:27am', 'dhfdhdfh', 'Received'),
(4, 0, 'arjun', 'dhdhdfg', '9719871982', 'arjun-Disp', '06-03-17', '12:34:40pm', 'harini', '1727284', '06-03-2017', '12:36:06pm', 'bibb', 'Received');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `s.no` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`s.no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`s.no`, `username`, `password`, `branch`, `datetime`) VALUES
(1, 'arjun', 'arjun', 'arjun-Dispatch', '2017-03-06 12:32:52'),
(2, 'sasi', 'sasi', 'sasi-HO', '2017-03-02 10:25:07'),
(3, 'harini', 'harini', 'harini-Back Office', '2017-03-06 12:35:30'),
(4, 'ram', 'ram', 'ram-Dispatch', '2017-03-01 18:04:41'),
(8, 'lee', 'lee', 'lee-Dispatch', '2017-03-01 18:01:04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
