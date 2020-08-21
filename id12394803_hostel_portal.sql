-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 07:56 AM
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
-- Database: `id12394803_hostel_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `chief_warden`
--

CREATE TABLE `chief_warden` (
  `chief_warden_id` int(10) NOT NULL,
  `chief_warden_name` varchar(50) NOT NULL,
  `chief_warden_image` varchar(100) NOT NULL,
  `chief_warden_position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chief_warden`
--

INSERT INTO `chief_warden` (`chief_warden_id`, `chief_warden_name`, `chief_warden_image`, `chief_warden_position`) VALUES
(1, 'RISHI RAJ SAXENA', 'rishi.jpg', 'WEB DEVELOPER'),
(2, 'NABANKUR DEY', 'nabankur.jpg', 'WEB DEVELOPER'),
(3, 'SUPRIYO NANDI', 'supriyo.jpg', 'WEB DEVELOPER'),
(4, 'MAYUKH MAJHI', 'mayukh.jpg', 'ANDROID DEVELOPER'),
(5, 'AVINAB SEN', 'avinab.jpg', 'ANDROID DEVELOPER');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_details`
--

CREATE TABLE `complaint_details` (
  `complaint_id` int(10) NOT NULL,
  `complaint_subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_student_rollno` int(10) NOT NULL,
  `complaint_hostel_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_roomno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `complaint_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unapproved',
  `complaint_seen` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unseen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `complaint_details`
--

INSERT INTO `complaint_details` (`complaint_id`, `complaint_subject`, `complaint_type`, `complaint_student_name`, `complaint_student_rollno`, `complaint_hostel_name`, `complaint_roomno`, `complaint_number`, `complaint_status`, `complaint_seen`) VALUES
(26, 'zsdzhjbckjzbck', '1', 'RISHI RAJ SAXENA', 1705353, 'KP-9C', '4B-101', 'KP-9C5edc8c23733c4', 'approved', 'seen');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_notifications`
--

CREATE TABLE `complaint_notifications` (
  `random_id` int(8) NOT NULL,
  `notification_id` varchar(80) NOT NULL,
  `warden_name` varchar(50) NOT NULL,
  `warden_message` varchar(255) NOT NULL,
  `complaint_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_notifications`
--

INSERT INTO `complaint_notifications` (`random_id`, `notification_id`, `warden_name`, `warden_message`, `complaint_status`) VALUES
(17, 'KP-9C5edc8c23733c4', 'SZGYDGUADS', 'XZVHJCZBC', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `hostelportaladmin`
--

CREATE TABLE `hostelportaladmin` (
  `admin_id` int(10) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hostelportaladmin`
--

INSERT INTO `hostelportaladmin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'kiitadmin', 'kiitadmin123');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(8, 2, 'fdscscsd', 'cxvcxv', '2020-01-30', 'logos2.png', '         vcxcvcxv vxcv         ', 'vxcv', 1, 'published'),
(9, 3, 'dzdf', 'xdcdc', '2020-01-30', 'logos2.png', '         vknxleiof fsdfs', 'fdsfdsv', 0, 'xcxzc'),
(10, 6, 'this is a new post', 'bb_nothing', '2020-01-30', 'logos2.png', '         lorem ipsum dolor sit amet', 'mnooo', 0, 'draft'),
(11, 2, 'dsadsad', 'xvxc', '2020-01-30', 'logos2.png', '         czxc xczcd', 'dasd', 0, 'dasd'),
(12, 4, 'fsbfjksf', 'cb xc ', '2020-01-30', 'logos2.png', '         this snsksd', 'fbdkfjbsdf', 0, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_rollno` int(10) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_gender` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `student_age` int(2) NOT NULL,
  `student_contact_number` bigint(10) NOT NULL,
  `student_dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_rollno`, `student_name`, `student_gender`, `student_age`, `student_contact_number`, `student_dob`) VALUES
(1705291, 'ANKIT SINHA', 'M', 20, 9749636258, '1999-06-10'),
(1705296, 'SUPRIYA SAHA', 'F', 21, 9832497707, '1999-08-03'),
(1705298, 'AVINAB SEN', 'M', 21, 6370536552, '1999-01-19'),
(1705299, 'ANJALI', 'F', 21, 9832439909, '1998-01-07'),
(1705301, 'AYUSH KUMAR RAI', 'M', 20, 7992982045, '1999-11-29'),
(1705302, 'BHUPENDER SINGH', 'M', 21, 6371415923, '1999-06-08'),
(1705305, 'DHARMENDRA', 'M', 20, 6393678971, '1999-12-11'),
(1705307, 'RAHUL BARBHUIYA', 'M', 22, 8658828170, '1999-10-23'),
(1705323, 'MAYUKH MAJHI', 'M', 21, 9126157829, '1999-10-23'),
(1705353, 'RISHI RAJ SAXENA', 'M', 21, 9556901757, '1999-02-14'),
(1705379, 'VISHAL KUMAR', 'M', 22, 6370544833, '1997-06-24'),
(1705418, 'NABANKUR DEY', 'M', 20, 8787638080, '1999-05-18'),
(1705470, 'SUPRIYO NANDI', 'M', 20, 8910184660, '1999-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `student_hostel`
--

CREATE TABLE `student_hostel` (
  `student_id` int(7) NOT NULL,
  `student_hostelname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_roomno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_contact` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_rollno` int(9) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_hostel`
--

INSERT INTO `student_hostel` (`student_id`, `student_hostelname`, `student_roomno`, `student_contact`, `student_rollno`, `student_name`) VALUES
(1, 'KP-9A', '1B-482', '9749636258', 1705291, 'ANKIT SINHA'),
(2, 'QC-2', '3B-121', '9832497707', 1705296, 'SUPRIYA SAHA'),
(3, 'KP-9C', '4B-101', '6370536552', 1705298, 'AVINAB SEN'),
(4, 'QC-2', '2A-233', '9832439909', 1705299, 'ANJALI'),
(5, 'KP-9C', '4B-105', '7992982045', 1705301, 'AYUSH KUMAR RAI'),
(6, 'KP-9C', '4B-102', '6371415923', 1705302, 'BHUPENDER SINGH'),
(7, 'KP-9A', '3A-200', '6393678971', 1705306, 'DHARMENDRA'),
(8, 'KP-9C', '2A-245', '8658828170', 1705307, 'RAHUL BARBHUIYA'),
(9, 'KP-9C', '4B-109', '9126157829', 1705323, 'MAYUKH MAJHI'),
(10, 'KP-9C', '2B-129', '9556901757', 1705353, 'RISHI RAJ SAXENA'),
(11, 'KP-9C', '4B-101', '6370544833', 1705379, 'VISHAL KUMAR'),
(12, 'KP-9C', '2B-138', '8787638080', 1705418, 'NABANKUR DEY\r\n'),
(13, 'KP-9C', '4B-100', '8910184660', 1705470, 'SUPRIYO NANDI');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `student_id` int(3) NOT NULL,
  `student_rollno` int(10) NOT NULL,
  `student_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`student_id`, `student_rollno`, `student_password`) VALUES
(1, 1705353, 'Rishiraj'),
(2, 1705323, 'Mayukh'),
(3, 1705298, 'avinab'),
(4, 1705470, 'supriyo'),
(5, 1705418, 'nabankur'),
(16, 1705291, 'Ankit');

-- --------------------------------------------------------

--
-- Table structure for table `warden_details`
--

CREATE TABLE `warden_details` (
  `warden_id` int(11) NOT NULL,
  `warden_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warden_hostel_name` int(30) NOT NULL,
  `warden_contact_number` int(10) NOT NULL,
  `warden_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warden_list`
--

CREATE TABLE `warden_list` (
  `S.No` int(5) NOT NULL,
  `warden_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `warden_hostel_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `warden_contact_no` bigint(11) NOT NULL,
  `warden_age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `warden_list`
--

INSERT INTO `warden_list` (`S.No`, `warden_name`, `warden_hostel_name`, `warden_contact_no`, `warden_age`) VALUES
(1, 'jyoti sir', 'KP-9C', 1234567890, 26),
(2, 'madan sir', 'KP-9C', 2345678901, 30),
(3, 'anonymous', 'KP-10', 4567890123, 28),
(4, 'warden1', 'KP-9A', 4567890123, 23);

-- --------------------------------------------------------

--
-- Table structure for table `warden_login`
--

CREATE TABLE `warden_login` (
  `hostel_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hostel_name` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hostel_password` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `warden_login`
--

INSERT INTO `warden_login` (`hostel_id`, `hostel_name`, `hostel_password`) VALUES
('KP9A', 'KP-9A', 'KP9A'),
('KP9C', 'KP-9C', 'KP9C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chief_warden`
--
ALTER TABLE `chief_warden`
  ADD PRIMARY KEY (`chief_warden_id`);

--
-- Indexes for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `complaint_notifications`
--
ALTER TABLE `complaint_notifications`
  ADD PRIMARY KEY (`random_id`);

--
-- Indexes for table `hostelportaladmin`
--
ALTER TABLE `hostelportaladmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_rollno`);

--
-- Indexes for table `student_hostel`
--
ALTER TABLE `student_hostel`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `warden_details`
--
ALTER TABLE `warden_details`
  ADD PRIMARY KEY (`warden_id`);

--
-- Indexes for table `warden_list`
--
ALTER TABLE `warden_list`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `warden_login`
--
ALTER TABLE `warden_login`
  ADD PRIMARY KEY (`hostel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chief_warden`
--
ALTER TABLE `chief_warden`
  MODIFY `chief_warden_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint_details`
--
ALTER TABLE `complaint_details`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `complaint_notifications`
--
ALTER TABLE `complaint_notifications`
  MODIFY `random_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hostelportaladmin`
--
ALTER TABLE `hostelportaladmin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_rollno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1705471;

--
-- AUTO_INCREMENT for table `student_hostel`
--
ALTER TABLE `student_hostel`
  MODIFY `student_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `student_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `warden_details`
--
ALTER TABLE `warden_details`
  MODIFY `warden_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warden_list`
--
ALTER TABLE `warden_list`
  MODIFY `S.No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
