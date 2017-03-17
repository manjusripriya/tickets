-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 05:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftsion`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `password`, `created`) VALUES
(2, 'priya', '827ccb0eea8a706c4c34a16891f84e7b', '2017-03-01 14:41:04'),
(15, 'nishanth', '59a7dd20361895273c97cffa9d91438e', '2017-03-02 09:01:19'),
(16, 'manju', '86f9ab6653b3b0151eef76b46ba2f9a5', '2017-03-02 11:48:05'),
(17, 'manju', '86f9ab6653b3b0151eef76b46ba2f9a5', '2017-03-02 12:16:20'),
(18, 'manju', '86f9ab6653b3b0151eef76b46ba2f9a5', '2017-03-02 12:50:24'),
(19, 'myuser', '5d5a582e5adf896ed6e1474c700b481a', '2017-03-02 20:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`code`, `email`) VALUES
('A001', 'manjusripriya@gmail.com'),
('B002', 'sivaprakashniet@gmail.com'),
('C001', 'dhanda@gmail.com'),
('D001', 'manju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `code`, `discription`, `datetime`) VALUES
(1, 'A001', 'welcome ', '2017-03-02 11:03:34'),
(7, 'B002', 'Hi.... We are looking for PHP developer', '2017-03-02 11:37:33'),
(9, 'B002', 'Urget opening for php', '2017-03-02 11:38:27'),
(22, 'A001', 'testing', '2017-03-02 20:38:56'),
(27, 'C001', 'welcome ', '2017-03-02 21:36:53'),
(28, 'D001', 'welcome to craftsion', '2017-03-02 21:47:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `Client code doesn't exist in the table.` FOREIGN KEY (`code`) REFERENCES `client` (`code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
