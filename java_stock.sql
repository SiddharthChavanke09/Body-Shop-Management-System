-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 01:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `totprice` float NOT NULL,
  `biilno` int(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `timing_from` time NOT NULL,
  `timing_to` time NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `transmission_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `customer_name`, `timing_from`, `timing_to`, `vehicle_type`, `fuel_type`, `transmission_type`) VALUES
(101, 'asa', '00:00:12', '00:00:01', 'asa', 'sas', 'sa'),
(102, 'sarvesh', '00:12:01', '00:01:15', 'Car', 'CNG', 'AMT');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `totprice` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`item_id`, `item_name`, `quantity`, `price`, `totprice`) VALUES
('103', '3M Xtreme Cut & Gloss', 3, 395, 1185);

-- --------------------------------------------------------

--
-- Table structure for table `dent`
--

CREATE TABLE `dent` (
  `b_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `t_type` varchar(255) NOT NULL,
  `work_to_do` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dent`
--

INSERT INTO `dent` (`b_id`, `c_name`, `vehicle_type`, `fuel_type`, `t_type`, `work_to_do`) VALUES
(1, 'vikas', 'c', 'p', 'm', 'paint');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `mfd` varchar(30) NOT NULL,
  `exp` varchar(30) NOT NULL,
  `batchno` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_id`, `item_name`, `quantity`, `price`, `mfd`, `exp`, `batchno`) VALUES
('107', '3M Foam Sprayer', 5, 1150, '15/3/24', '24/9/26', '1097'),
('106', '3M Ceramic Coating', 16, 1092, '12/3/24', '19/4/26', '1497'),
('105', '3M Wax Polish', 23, 158, '1/4/24', '26/6/25', '1597'),
('104', '3M Washer fluid concentrate', 50, 90, '25/3/24', '5/6/26', '8974'),
('103', '3M Xtreme Cut & Gloss', 24, 395, '1/3/24', '25/2/25', '1475'),
('102', '3M Leather Cleaner ', 15, 494, '25/3/24', '5/6/26', '1954'),
('101', '3M Glass Cleaner', 10, 385, '1/3/24', '25/2/25', '1025'),
('108', 'Bosch Aqua Pressure Washer', 3, 6072, '16/3/24', '19/9/28', '1852'),
('109', 'Wurth Panel Sander', 5, 2080, '5/3/24', '12/1/28', '4785'),
('110', 'Air Compressor', 1, 6720, '29/3/24', '25/8/29', '7541');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `billno` varchar(255) NOT NULL,
  `item_id` varchar(30) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` double NOT NULL,
  `totprice` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `billno` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `totprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`billno`, `item_id`, `item_name`, `quantity`, `price`, `totprice`) VALUES
(1, 103, '3M Xtreme Cut & Gloss', 1, 395, 385);

-- --------------------------------------------------------

--
-- Table structure for table `wash`
--

CREATE TABLE `wash` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `t_from` time NOT NULL,
  `t_to` time NOT NULL,
  `v_type` varchar(255) NOT NULL,
  `f_type` varchar(255) NOT NULL,
  `trans_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wash`
--

INSERT INTO `wash` (`c_id`, `c_name`, `t_from`, `t_to`, `v_type`, `f_type`, `trans_type`) VALUES
(101, 'sarvesh', '00:12:00', '00:01:00', 'CAR', 'PETROL', 'MT'),
(102, 'avi', '00:01:15', '00:01:45', 'Car', 'Petrol', 'AMT'),
(103, 'sarvesh', '00:12:01', '00:01:00', 'LMV', 'Petrol', 'MT'),
(105, 'mahesh', '00:05:06', '00:06:00', 'car', 'petrol', 'amt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`biilno`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`);

--
-- Indexes for table `dent`
--
ALTER TABLE `dent`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `wash`
--
ALTER TABLE `wash`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `biilno` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `billno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wash`
--
ALTER TABLE `wash`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
