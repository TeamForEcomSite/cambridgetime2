-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2017 at 10:55 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cambridgetime`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_id` int(10) NOT NULL,
  `A_name` varchar(100) NOT NULL,
  `A_img` varchar(1000) NOT NULL,
  `A_psw` varchar(100) NOT NULL,
  `A_info` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_id`, `A_name`, `A_img`, `A_psw`, `A_info`) VALUES
(101, 'Deep Mehta', 'admin/img/deep.jpg', 'deepmehta98', 'Developer of cambridgetime website.');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `C_id` int(100) NOT NULL,
  `C_name` varchar(100) NOT NULL,
  `C_code` varchar(100) NOT NULL,
  `C_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`C_id`, `C_name`, `C_code`, `C_img`) VALUES
(1, 'JEWELLERY', 'A101', 'category/img/jewellery.jpg'),
(2, 'DIAMOND', 'A102', 'category/img/diamond.jpg'),
(3, 'WATCH', 'A103', 'category/img/watch.jpg'),
(4, 'CLOCK', 'A104', 'category/img/clock.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `P_id` int(10) NOT NULL,
  `C_id` int(10) NOT NULL,
  `S_id` int(10) NOT NULL,
  `P_name` varchar(100) NOT NULL,
  `P_code` varchar(100) NOT NULL,
  `P_img` varchar(1000) NOT NULL,
  `price` int(100) NOT NULL,
  `P_info` varchar(1000) NOT NULL,
  `jsoncode` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `S_id` int(10) NOT NULL,
  `C_id` int(10) NOT NULL,
  `S_name` varchar(100) NOT NULL,
  `S_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`S_id`, `C_id`, `S_name`, `S_code`) VALUES
(1, 1, 'Abrasives', 'j2'),
(2, 1, 'Anvils', 'j3'),
(3, 2, 'Diamond Display', 'd1'),
(4, 2, 'Diamond Tools and Flywheels', 'd2'),
(5, 3, 'Boxes for storage watch parts', 'w1'),
(6, 3, 'Case Movement Holders', 'w2'),
(7, 4, 'Clock Keys', 'c1'),
(8, 4, 'Clock Mainsprings', 'c2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `U_id` int(100) NOT NULL,
  `U_name` varchar(100) NOT NULL,
  `U_psw` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `M_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`P_id`),
  ADD KEY `C_id` (`C_id`,`S_id`),
  ADD KEY `sidfk` (`S_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`S_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cid2fk` FOREIGN KEY (`C_id`) REFERENCES `categories` (`C_id`),
  ADD CONSTRAINT `sidfk` FOREIGN KEY (`S_id`) REFERENCES `subcategories` (`S_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `cidfk` FOREIGN KEY (`C_id`) REFERENCES `categories` (`C_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
