-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 01:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcostumer`
--

CREATE TABLE `tblcostumer` (
  `cid` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcostumer`
--

INSERT INTO `tblcostumer` (`cid`, `fname`, `lname`, `contact`, `sex`, `address`, `time`, `date`, `email`) VALUES
(1, 'Guianne', 'Olvido', '09245056875', 'Female', 'Cadiz', '07:29:20 PM', '29-04-2021', 'olvido@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `invoice_id` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `costumer` varchar(50) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `total_quantity` varchar(50) NOT NULL,
  `transaction_no` int(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`invoice_id`, `user`, `costumer`, `paid_amount`, `status`, `balance`, `sub_total`, `total_quantity`, `transaction_no`, `date`, `time`) VALUES
(5, 'bcopointofsale', 'Regular Costumer', '100', 'Paid', '88.0', '12.0', '4.0', 6, '29-04-2021', '07:07:44 PM'),
(6, 'bcopointofsale', 'Regular Costumer', '1000', 'Paid', '655.0', '345.0', '23.0', 7, '29-04-2021', '07:24:25 PM'),
(7, 'User', 'Regular Costumer', '1000', 'Paid', '765.0', '235.0', '15.0', 8, '29-04-2021', '07:34:06 PM'),
(8, 'glenn', 'Regular Costumer', '1000', 'Paid', '593.00', '407.00', '22', 9, '16-05-2021', '07:54:53 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tbllog`
--

CREATE TABLE `tbllog` (
  `Logid` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `type` int(50) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllog`
--

INSERT INTO `tbllog` (`Logid`, `Username`, `Password`, `type`) VALUES
(1, 'glenn', 'admin', 1),
(2, 'User', 'User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblnum`
--

CREATE TABLE `tblnum` (
  `numid` int(11) NOT NULL,
  `value` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnum`
--

INSERT INTO `tblnum` (`numid`, `value`) VALUES
(1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `bar_code` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mark_up` int(50) NOT NULL,
  `exp_date` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`prod_id`, `product_name`, `bar_code`, `price`, `quantity`, `mark_up`, `exp_date`, `date`, `time`) VALUES
(1, 'Nescafe', '877-090', 3, '956.0', 1, '09-09-2021', '18-09-2020', '02:58:52 PM'),
(2, 'Milo', '12-11', 9, '982.0', 3, '12-23-2023', '29-04-2021', '07:04:19 PM'),
(3, 'Coke 12oz', '1221-1111', 15, '1000.0', 4, '12-23-2023', '29-04-2021', '07:06:24 PM'),
(4, 'Silver swan ', '12-2222', 10, '992.0', 4, '12-4-2024', '29-04-2021', '07:07:21 PM'),
(5, '3 $ 1 nescafe ', '1211-111', 9, '970.0', 3, '1-3-2030', '29-04-2021', '07:10:12 PM'),
(6, 'Colgate', '13-33', 10, '1000.0', 3, '12-2-2030', '29-04-2021', '07:11:30 PM'),
(7, 'Coke 1 liter', '13-22-222', 50, '996.0', 10, '22-21-2030', '29-04-2021', '07:12:28 PM'),
(8, 'Beer', '14-111111', 30, '1000.0', 8, '12-2-2030', '29-04-2021', '07:14:32 PM'),
(9, 'Meat loaf', '19-999', 23, '996.0', 4, '12-9-2030', '29-04-2021', '07:18:39 PM'),
(10, 'Beef loaf', '15-222222', 24, '997', 5, '10-9-2023', '29-04-2021', '07:19:18 PM'),
(11, 'Corn beef', '26-1111', 25, '981.0', 4, '13-9-2034', '29-04-2021', '07:20:51 PM'),
(12, 'Asin', '111-1111', 5, '1000.0', 2, '12-28-2034', '29-04-2021', '07:21:27 PM'),
(13, 'Vitsen', '122333', 3, '992.0', 1, '12-09-2074', '29-04-2021', '07:21:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblremove`
--

CREATE TABLE `tblremove` (
  `remove_id` int(11) NOT NULL,
  `remove_by` varchar(50) NOT NULL,
  `product_id` int(30) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblremove`
--

INSERT INTO `tblremove` (`remove_id`, `remove_by`, `product_id`, `product_name`, `quantity`, `unit_price`, `date`, `time`) VALUES
(1, 'bcopointofsale', 1, 'Nescafe', '4', '3', '29-04-2021', '07:23:59 PM'),
(2, 'glenn', 7, 'Coke 1 liter', '3', '50', '14-07-2021', 'na'),
(3, 'glenn', 2, 'Milo', '5', '9', '14-07-2021', 'na'),
(4, 'glenn', 6, 'Colgate', '3', '10', '14-07-2021', 'na'),
(5, 'glenn', 8, 'Beer', '4', '30', '14-07-2021', 'na'),
(6, 'glenn', 3, 'Coke 12oz', '3', '15', '14-07-2021', 'na'),
(7, 'glenn', 12, 'Asin', '5', '5', '14-07-2021', 'na'),
(8, 'glenn', 5, '3 $ 1 nescafe ', '34', '9', '14-07-2021', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `tblselling`
--

CREATE TABLE `tblselling` (
  `selling_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblselling`
--

INSERT INTO `tblselling` (`selling_id`, `product_id`, `product_name`, `quantity`, `total_price`, `unit_price`, `profit`, `date`, `time`) VALUES
(1, 1, 'Nescafe', '5', '15.0', '3', '5.0', '18-09-2020', '02:59:04 PM'),
(2, 1, 'Nescafe', '5', '15.0', '3', '5.0', '18-09-2020', '02:59:49 PM'),
(3, 1, 'Nescafe', '1', '3.0', '3', '1.0', '18-09-2020', '03:01:47 PM'),
(4, 1, 'Nescafe', '9', '27.0', '3', '9.0', '18-09-2020', '03:02:30 PM'),
(5, 1, 'Nescafe', '8', '24.0', '3', '8.0', '29-04-2021', '06:35:14 PM'),
(6, 1, 'Nescafe', '6', '18.0', '3', '6.0', '29-04-2021', '06:35:22 PM'),
(7, 1, 'Nescafe', '4', '12.0', '3', '4.0', '29-04-2021', '07:07:33 PM'),
(8, 11, 'Corn beef', '6', '150.0', '25', '24.0', '29-04-2021', '07:22:04 PM'),
(9, 11, 'Corn beef', '4', '100.0', '25', '16.0', '29-04-2021', '07:22:12 PM'),
(10, 4, 'Silver swan ', '4', '40.0', '10', '16.0', '29-04-2021', '07:22:17 PM'),
(11, 4, 'Silver swan ', '4', '40.0', '10', '16.0', '29-04-2021', '07:22:21 PM'),
(13, 13, 'Vitsen', '5', '15.0', '3', '5.0', '29-04-2021', '07:22:30 PM'),
(14, 11, 'Corn beef', '5', '125.0', '25', '20.0', '29-04-2021', '07:33:45 PM'),
(15, 9, 'Meat loaf', '4', '92.0', '23', '16.0', '29-04-2021', '07:33:48 PM'),
(16, 13, 'Vitsen', '3', '9.0', '3', '3.0', '29-04-2021', '07:33:52 PM'),
(17, 1, 'Nescafe', '3', '9.0', '3', '3.0', '29-04-2021', '07:33:55 PM'),
(18, 7, 'Coke 1 liter', '4', '200.0', '50', '40.0', '16-05-2021', 'na'),
(19, 10, 'Beef loaf', '3', '72.0', '24', '15.0', '16-05-2021', 'na'),
(20, 2, 'Milo', '15', '135.0', '9', '45.0', '16-05-2021', 'na'),
(26, 5, '3 $ 1 nescafe ', '10', '90.0', '9', '30.0', '14-07-2021', 'na'),
(27, 5, '3 $ 1 nescafe ', '20', '180.0', '9', '60.0', '14-07-2021', 'na'),
(30, 11, 'Corn beef', '4', '100.0', '25', '16.0', '27-07-2021', '10:52:51 AM'),
(31, 2, 'Milo', '3', '27.0', '9', '9.0', '27-07-2021', '10:52:56 AM'),
(32, 1, 'Nescafe', '3', '9.0', '3', '3.0', '27-07-2021', '10:53:06 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcostumer`
--
ALTER TABLE `tblcostumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbllog`
--
ALTER TABLE `tbllog`
  ADD PRIMARY KEY (`Logid`);

--
-- Indexes for table `tblnum`
--
ALTER TABLE `tblnum`
  ADD PRIMARY KEY (`numid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `tblremove`
--
ALTER TABLE `tblremove`
  ADD PRIMARY KEY (`remove_id`);

--
-- Indexes for table `tblselling`
--
ALTER TABLE `tblselling`
  ADD PRIMARY KEY (`selling_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcostumer`
--
ALTER TABLE `tblcostumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `invoice_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbllog`
--
ALTER TABLE `tbllog`
  MODIFY `Logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblnum`
--
ALTER TABLE `tblnum`
  MODIFY `numid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblremove`
--
ALTER TABLE `tblremove`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblselling`
--
ALTER TABLE `tblselling`
  MODIFY `selling_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
