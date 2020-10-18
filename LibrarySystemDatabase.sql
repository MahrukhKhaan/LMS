-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2017 at 05:59 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `librarymanagementsystem`
--
CREATE DATABASE `librarymanagementsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `librarymanagementsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `email`) VALUES
(1, 'admin', '1234', 'jatin.noida82@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(4) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `available` tinyint(4) NOT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `price`, `publisher`, `available`) VALUES
(1001, 'c plus plus', 'yashwant', 250, 'krishna', 1),
(1002, 'bca maths', 'j.p. chauhan', 200, 'krishna', 1),
(1003, 'business communication', 'neha singh', 150, 'kirti', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
  `bookId` int(4) NOT NULL,
  `issueId` int(3) NOT NULL,
  `issueDate` datetime NOT NULL,
  `returnBookId` int(4) NOT NULL,
  `returnId` int(3) NOT NULL,
  `returnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`bookId`, `issueId`, `issueDate`, `returnBookId`, `returnId`, `returnDate`) VALUES
(0, 0, '2017-05-31 12:32:07', 1001, 2, '2017-05-31 12:33:51'),
(0, 0, '2017-06-01 05:38:38', 1002, 2, '2017-06-01 05:41:16'),
(1003, 4, '2017-06-01 05:39:26', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `Id` int(3) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Course` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Id`, `FirstName`, `LastName`, `Position`, `Mobile`, `Email`, `Course`) VALUES
(1, 'jatin', 'sharma', 'student', '8750313239', 'jatinnoidagmailcom', 'bca'),
(2, 'dileep', 'kumar', 'student', '7503402905', 'jatin.noida@gmail.com', 'bba'),
(3, 'ram', 'kumar', 'faculty', '9854232322', 'ramkumar345@gmail.com', 'management'),
(4, 'vivek', 'krishna', 'faculty', '9843456322', 'vivek.krishna01@gmail.com', 'information technology'),
(5, 'hitesh', 'kaushik', 'student', '8745324652', 'hitesh.kumarkaushik789@gmail.com', 'bca');
