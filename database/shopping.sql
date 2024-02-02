-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 06:03 AM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `fname`, `lname`, `email`, `pass`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uid` int(30) DEFAULT NULL,
  `pid` int(30) DEFAULT NULL,
  `quantity` int(30) DEFAULT NULL,
  `isOrdered` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`uid`, `pid`, `quantity`, `isOrdered`, `date`, `time`) VALUES
(11, 309, 1, 0, '0000-00-00', '00:00:00'),
(11, 357, 5, 0, '0000-00-00', '00:00:00'),
(1, 372, 1, 0, '0000-00-00', '00:00:00'),
(2, 372, 1, 0, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `faq` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `msg`, `faq`, `date`, `time`, `answer`) VALUES
(11, 'abc', 'abc@gmail.com', 'Products is nice', 0, '2017-06-26', '14:02:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `type` int(10) NOT NULL,
  `location` varchar(120) NOT NULL,
  `price` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `type`, `location`, `price`, `name`, `model`) VALUES
(372, 1, 'images/electronic/1.jpg', 8000, 'Mobile Phone 1', 'Mobile'),
(373, 1, 'images/electronic/2.jpg', 35000, ' Laptop', 'Laptop'),
(374, 1, 'images/electronic/3.jpg', 15000, 'Mobile Phone 1', 'Mobile'),
(375, 1, 'images/electronic/4.jpg', 15000, 'Mobile Phone 2', 'Mobile'),
(376, 1, 'images/electronic/5.jpg', 15000, 'Mobile Phone 3', 'Mobile'),
(377, 1, 'images/electronic/6.jpg', 15000, 'Mobile Phone 4', 'Mobile'),
(378, 1, 'images/electronic/7.jpg', 15000, 'Mobile Phone 5', 'Mobile'),
(379, 1, 'images/electronic/8.jpg', 35000, ' TV1', 'TV'),
(380, 1, 'images/electronic/9.jpg', 40000, ' TV2', 'TV'),
(390, 1, 'images/electronic/10.jpg', 45000, ' TV3', 'TV'),
(381, 1, 'images/electronic/11.jpg', 35000, ' Laptop2', 'Laptop'),
(382, 2, 'images/gifts/1.jpg', 5000, ' Wallet 1', 'Wallet'),
(383, 2, 'images/gifts/2.jpg', 700, ' Wallet 2', 'Wallet'),
(385, 2, 'images/gifts/4.jpg', 550, ' Wallet 4', 'Wallet'),
(386, 2, 'images/gifts/5.jpg', 600, ' Wallet 5', 'Wallet'),
(387, 3, 'images/kitchen/1.jpg', 15000, ' Kitchen 1', 'Kitchen'),
(388, 3, 'images/kitchen/4.jpg', 17000, ' Kitchen 2', 'Kitchen'),
(389, 3, 'images/kitchen/5.jpg', 18000, ' Kitchen 3', 'Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `recommend`
--

CREATE TABLE `recommend` (
  `id` int(30) NOT NULL,
  `type` int(10) NOT NULL,
  `location` varchar(120) NOT NULL,
  `price` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommend`
--

INSERT INTO `recommend` (`id`, `type`, `location`, `price`, `name`, `model`) VALUES
(200, 1, 'images/electronic/1.jpg', 8000, 'Mobile Phone 1', 'Mobile'),
(201, 1, 'images/electronic/2.jpg', 35000, ' Laptop', 'Laptop'),
(202, 1, 'images/electronic/3.jpg', 15000, 'Mobile Phone 1', 'Mobile'),
(203, 1, 'images/electronic/4.jpg', 15000, 'Mobile Phone 2', 'Mobile'),
(204, 1, 'images/electronic/5.jpg', 15000, 'Mobile Phone 3', 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `image` varchar(100) DEFAULT 'images/users/3.jpg'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `fname`, `lname`, `email`, `pass`, `image`) VALUES
(1, 'abc', 'a', 'c', 'abc@gmail.com', 'abc', ''),
(2, 'new1', 'new1', 'n', 'new1@gmail.com', 'new', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommend`
--
ALTER TABLE `recommend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `recommend`
--
ALTER TABLE `recommend`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
