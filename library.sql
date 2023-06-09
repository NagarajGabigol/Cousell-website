-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 11:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `mobile`, `user_id`) VALUES
('Nagaraj123', '123', '7418529637', 23);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_id` int(11) NOT NULL,
  `Book_name` varchar(100) NOT NULL,
  `Author_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_id`, `Book_name`, `Author_name`) VALUES
(1001, 'Bishop Sullivan Ruppel-Computer Security', 'Matt Bishop'),
(1002, 'Whitman Mattord-principles of information Security', 'Michael E whitman ');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_id` varchar(100) NOT NULL,
  `Course_name` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_id`, `Course_name`, `Department`) VALUES
('19CS301A', 'web development', 'CSE'),
('19CS302A', 'AI', 'CSE'),
('19CS303A', 'DCC', 'CSE'),
('19CS304A', 'GTO', 'CSE'),
('19CS305A', 'IS', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_videos`
--

CREATE TABLE `enrolled_videos` (
  `username` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `vpath` varchar(100) NOT NULL,
  `Payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled_videos`
--

INSERT INTO `enrolled_videos` (`username`, `cid`, `name`, `Price`, `details`, `vpath`, `Payment`) VALUES
('Nagaraj123', 14, 'HTML', 500, 'HTML', '../videos/20221128123022.mp4', 'Paytm');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `library_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_id`, `library_name`) VALUES
(101, 'Ramaiah library'),
(102, 'Vishweshwaraiah library'),
(103, 'Oxford library');

-- --------------------------------------------------------

--
-- Table structure for table `mydocuments`
--

CREATE TABLE `mydocuments` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `impath` varchar(100) NOT NULL,
  `pfpath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Phone Number` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Payment Mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Payment_Mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `username`, `Full_Name`, `Phone_Number`, `Address`, `Payment_Mode`) VALUES
(105, 'Nagaraj123', 'Rakesh', '7894561285', 'Bangalore', 'COD'),
(106, 'Nagaraj123', 'Tippanna', '7418529632', 'Bagalkot', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `impath` varchar(100) NOT NULL,
  `pfpath` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `details`, `price`, `impath`, `pfpath`, `Username`) VALUES
(62, 'Big Data in Education', 'How Big data influenced in the education field.', 250, '../image/20221128134930.jpg', '../pdf/20221128134930.pdf', 'Abhay');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `First Name` varchar(100) NOT NULL,
  `Last Name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`First Name`, `Last Name`, `student_id`, `course_id`, `course`) VALUES
('nagaraj', 'gabigol', '1', '12334', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(100) NOT NULL,
  `Register_no` varchar(100) NOT NULL,
  `Email_id` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `Register_no`, `Email_id`, `phone_number`, `PASSWORD`) VALUES
('Nagaraj', '19ETCS002410', 'ngmail12.com', 998754124, NULL),
('Abhay', '19ETCS002411', 'agmail.com', 958744724, NULL),
('Praneeth', '19ETCS002412', 'pgmail.com', 898758752, NULL),
('Manoj', '19ETCS002413', 'mgmail.com', 959715875, NULL),
('Vinay', '19ETCS00441', 'v@gmail.com', 2147483647, '1147'),
('Hajira', '19ETCS00442', 'h@gmail.com', 2147483647, '12345'),
('Shivu', '19ETCS00443', 's@gmail.com', 2147483647, '8745'),
('Vivek', '19ETCS00444', 'v@gmail.com', 2147483647, '9874'),
('Shree', '19ETCS00450', 'shree@gmail.com', 2147483647, '18854'),
('sagar', '19ETCS00451', 's@gmail.com', 2147483647, '1148'),
('Malik', '19ETCS00485', 'm@gmail.com', 2147483647, '1148'),
('Kavya', '19ETEE003015', 'k@gmail.com', 2147483647, 'rakesh@143'),
('Rakesh', '19ETEE003031', 'r@gmail.com', 2147483647, 'kavya@143');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `Item_name` varchar(100) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`order_id`, `username`, `pid`, `Item_name`, `Price`) VALUES
(105, 'Nagaraj123', 62, 'Big Data in Education', 250),
(106, 'Nagaraj123', 63, 'XYZ', 500);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_account`
--

CREATE TABLE `vendor_account` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_account`
--

INSERT INTO `vendor_account` (`username`, `password`, `mobile`, `user_id`) VALUES
('Abhay', '123', '9638527412', 9);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `cid` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `cimpath` varchar(100) NOT NULL,
  `vpath` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`cid`, `c_name`, `price`, `details`, `cimpath`, `vpath`, `username`) VALUES
(14, 'HTML', 500, 'HTML', '../cover_image/20221128123022.jpg', '../videos/20221128123022.mp4', 'Abhay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Register_no`);

--
-- Indexes for table `vendor_account`
--
ALTER TABLE `vendor_account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `vendor_account`
--
ALTER TABLE `vendor_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
