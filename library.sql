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


CREATE TABLE `books` (
  `Book_id` int(11) NOT NULL,
  `Book_name` varchar(100) NOT NULL,
  `Author_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `course` (
  `Course_id` varchar(100) NOT NULL,
  `Course_name` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `enrolled_videos` (
  `username` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `vpath` varchar(100) NOT NULL,
  `Payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `library_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `mydocuments` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `impath` varchar(100) NOT NULL,
  `pfpath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Phone Number` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Payment Mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------


CREATE TABLE `order_manager` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Payment_Mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `impath` varchar(100) NOT NULL,
  `pfpath` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `register` (
  `First Name` varchar(100) NOT NULL,
  `Last Name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `student` (
  `Name` varchar(100) NOT NULL,
  `Register_no` varchar(100) NOT NULL,
  `Email_id` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `user_order` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `Item_name` varchar(100) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `vendor_account` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `videos` (
  `cid` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `cimpath` varchar(100) NOT NULL,
  `vpath` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


