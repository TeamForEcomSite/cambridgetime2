-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2017 at 11:25 AM
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
(101, 'Deep Mehta', 'img/admin/deep.jpg', 'deepmehta98', 'Developer of cambridgetime website.'),
(102, 'Parth Shah', 'img/admin/parth.jpg', 'parth4299', 'Developer'),
(103, 'ffgh', '', 'dcjf', 'ree');

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
(4, 'BAG', 'A104', 'category/img/clock.jpg'),
(5, 'CLOCK', 'A105', 'sdtdgch');

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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`P_id`, `C_id`, `S_id`, `P_name`, `P_code`, `P_img`, `price`, `P_info`, `jsoncode`) VALUES
(1, 1, 1, 'Emery Papers\r\n\r\n', 'a1', 'image/jwellery/abrasives/emery.jpg', 5000, 'Size: 9\" x 1\" Grit: 0, 2/0, 3/0, 4/0, 5/0, 6/0,1,2\r\nWeight: 10 gms/pc\r\n\r\n', 'qwertyuioplkjhgfdsaaaaaaaazxcvbnmlpoiuyttrewqasdfghjklmnbvcxz'),
(2, 1, 1, 'xcgfcv', 'dcfgv', 'sdcv', 345, 'sdfgtfvgfds', ''),
(3, 3, 3, 'BHARAT', 'PARTH', 'SHAH', 5555, 'wsfevfd', ''),
(4, 4, 4, 'NARESH', 'GANDHIJI', 'MEHTA', 12000, 'size', ''),
(5, 3, 2, 'PRAVINA', 'BHARAT', 'SHAH', 555, 'size:7x5', ''),
(6, 4, 2, 'WDE', 'W', 'WE', 44, 'FFE', '{\"pid\":\"6\",\"cid\":\"4\",\"sid\":\"2\",\"pname\":\"WDE\",\"pcode\":\"W\",\"pimage\":\"WE\",\"price\":\"44\",\"pinfo\":\"FFE\"}'),
(7, 1, 2, 'safsd', 'wfee', 'wafes', 55, 'efsdgrdfhg', '{\"pid\":\"7\",\"cid\":\"1\",\"sid\":\"2\",\"pname\":\"safsd\",\"pcode\":\"wfee\",\"pimage\":\"wafes\",\"price\":\"55\",\"pinfo\":\"efsdgrdfhg\"}');

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
(8, 4, 'Clock Mainsprings', 'c2'),
(9, 4, 'Paert', 'errdhg'),
(10, 3, 'oiertyj', 'qsgdg'),
(11, 3, 'dfggn', 'a4'),
(12, 4, 'wetg', 'wfd'),
(13, 4, 'safgd', 'sgdf');

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
