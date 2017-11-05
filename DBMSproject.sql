-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2017 at 02:28 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DBMSproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `addr_id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `colony` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `country` varchar(50) NOT NULL,
  `longitude` decimal(8,5) NOT NULL,
  `latitude` decimal(8,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`addr_id`, `area`, `colony`, `city`, `state`, `pincode`, `country`, `longitude`, `latitude`) VALUES
(1, 'B-111', 'Rajiv Bhawan, IIT Roorkee', 'Roorkee', 'Uttarakhand', 247667, 'India', '77.89498', '29.87016'),
(2, 'B-115', 'Rajiv Bhawan, IIT Roorkee', 'Roorkee', 'Uttarakhand', 247667, 'India', '77.89487', '29.87013'),
(3, '2026, 23/B, 3rd A Cross Road', 'Yeshwanthpur', 'Bangalore', 'Karnataka', 566058, 'India', '77.54011', '13.01933'),
(4, '1, Hennur Junction, Grace Town, ', 'Kalyan Nagar', 'Bangalore', 'Karnataka', 560057, 'India', '77.63270', '13.02830'),
(5, 'Block No. 6B/1, Main Market', 'Ramesh Nagar', 'Delhi', 'Delhi', 110057, 'India', '77.20904', '28.53446'),
(6, '7/95, Ground Floor', 'Malviya Nagar', 'Delhi', 'Delhi', 110018, 'India', '77.13547', '28.64996'),
(7, '197/A, Ground Floor', 'Double Road, CMH Road, Indiranagar', 'Bangalore', 'Karnataka', 560056, 'India', '77.63435', '12.97791'),
(8, '#4', 'Raja Garden, Landmark - Opposite Metro Pillar No. 382', 'New Delhi', 'Delhi', 110015, 'India', '77.12572', '28.65088');

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `a_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `at_stamp` datetime NOT NULL,
  `a_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`a_id`, `d_id`, `text`, `at_stamp`, `a_image`) VALUES
(1, 1, 'article by Dr. Satish Ramaiah 1', '2011-08-21 14:11:09', 'NA'),
(2, 1, 'article by Dr. Satish Ramaiah 2', '2012-07-02 14:11:09', 'NA'),
(3, 2, 'article by Dr. Rajesh 1', '2015-08-06 16:46:30', 'image'),
(4, 2, 'article by Dr. Rajesh 2', '2014-02-14 16:46:30', 'images'),
(5, 4, 'article by Dr. Abhishek 1', '2014-04-02 20:12:08', 'NA'),
(6, 4, 'article by Dr. Abhishek 2', '2011-05-01 02:42:21', 'no_images'),
(7, 4, 'article by Dr. Abhishek 3', '2005-07-14 20:51:54', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `Clinic`
--

CREATE TABLE `Clinic` (
  `c_id` int(11) NOT NULL,
  `c_contact` bigint(10) NOT NULL,
  `c_email_id` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `about` varchar(500) NOT NULL,
  `payment_mode` varchar(30) NOT NULL,
  `ownership_doc` varchar(100) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `clinic_photo` varchar(100) NOT NULL,
  `no_of_beds` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clinic`
--

INSERT INTO `Clinic` (`c_id`, `c_contact`, `c_email_id`, `logo`, `c_name`, `about`, `payment_mode`, `ownership_doc`, `addr_id`, `clinic_photo`, `no_of_beds`, `owner_id`) VALUES
(1, 1123456789, 'first@gmail.com', 'NA', 'People Tree', 'It is one of the best clinic', 'Cash', 'NA', 3, 'NA', 10, 1),
(2, 1123456788, 'second@gmail.com', 'NA', 'Arun Health Centre', 'I see around 60 to70 patients in a day on a average has my on personal setup where I admit patients and treat them.', 'Cash', 'NA', 5, 'NA', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Clinic_timing`
--

CREATE TABLE `Clinic_timing` (
  `c_id` int(11) NOT NULL,
  `day` int(1) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clinic_timing`
--

INSERT INTO `Clinic_timing` (`c_id`, `day`, `start_time`, `end_time`) VALUES
(1, 2, '10:00:00', '20:00:00'),
(1, 3, '10:00:00', '20:00:00'),
(1, 4, '10:00:00', '20:00:00'),
(1, 5, '10:00:00', '20:00:00'),
(1, 6, '10:00:00', '20:00:00'),
(1, 7, '10:00:00', '20:00:00'),
(2, 2, '10:00:00', '20:00:00'),
(2, 3, '10:00:00', '20:00:00'),
(2, 4, '10:00:00', '20:00:00'),
(2, 5, '10:00:00', '20:00:00'),
(2, 6, '10:00:00', '20:00:00'),
(2, 7, '10:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Consult`
--

CREATE TABLE `Consult` (
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `ct_stamp` datetime NOT NULL,
  `problem` varchar(150) NOT NULL,
  `solution` varchar(300) NOT NULL,
  `consult_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Consult`
--

INSERT INTO `Consult` (`p_id`, `d_id`, `ct_stamp`, `problem`, `solution`, `consult_status`) VALUES
(1, 1, '2017-11-01 23:11:15', 'problem1', 'solution1', 'solved'),
(1, 2, '2017-07-17 12:19:13', 'problem2', 'solution2', 'solved'),
(1, 3, '2017-11-05 19:12:08', 'problem4', 'solution4', 'unsolved'),
(1, 4, '2017-08-14 08:14:18', 'problem3', 'solution3', 'solved'),
(2, 4, '2017-11-07 10:12:17', 'problem5', 'solution5', 'unsolved');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `year_exp` int(3) NOT NULL,
  `about_me` text NOT NULL,
  `profile_photo` varchar(100) NOT NULL,
  `d_contact` bigint(10) NOT NULL,
  `d_email_id` varchar(50) NOT NULL,
  `council_reg_no` varchar(11) NOT NULL,
  `council_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`d_id`, `d_name`, `addr_id`, `gender`, `year_exp`, `about_me`, `profile_photo`, `d_contact`, `d_email_id`, `council_reg_no`, `council_name`) VALUES
(1, 'Satish Ramaiah', 3, 'Male', 14, 'Dr Satish is currently the Chief of Mind Care Department, Consultant Neuropsychiatrist and Sleep Disorder specialist at People Tree Hospitals, Yeshwanthpur, Bangalore', 'NA', 1234567890, 'satish@gmail.com', '64790', 'Karnataka Medical Council'),
(2, 'Rajesh', 4, 'Male', 14, 'Dr.Rajesh K.N is a Consultant Neurologist & is the Chief of People Tree Neurology. Formerly he was instrumental in initiating, expanding & heading a highly successful Neurology unit at Narayana Hrudayalaya Institute of Neurosciences Bangalore', 'NA', 1234567891, 'rajesh@gmail.com', '40830', 'Karnataka Medical Council'),
(3, 'Arun Anand', 5, 'Male', 34, 'Dr. Arun Anand is a Doctor in Ramesh Nagar, Delhi and has an experience of 35 years in this field. Dr. Arun Anand practices at Dr Arun\'s Health Centre in Ramesh Nagar, Delhi. He completed MBBS from Bannu Medical College in 1978.', 'NA', 1234567892, 'arun@gmail.com', '29516', 'Delhi Medical Council'),
(4, 'Abhishek Arora', 6, 'Male', 15, 'Dr. Abhishek Arora is a renowned dental surgeon with over 12 years of professional dentistry practice. He has been practicing aesthetic dentistry and implant procedures at his speciality clinic "Dr. Abhishek Arora\'s Dental Care" located in Malviya Nagar.', 'NA', 1234567893, 'abhishek@gmail.com', 'A-3881 ', 'Delhi Medical Council');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_timing`
--

CREATE TABLE `Doctor_timing` (
  `d_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `day` int(1) NOT NULL,
  `slot` varchar(20) NOT NULL,
  `availability` int(11) NOT NULL,
  `d_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_timing`
--

INSERT INTO `Doctor_timing` (`d_id`, `c_id`, `day`, `slot`, `availability`, `d_fee`) VALUES
(1, 1, 2, '10:00-14:00', 10, 100),
(1, 1, 2, '16:00-20:00', 20, 100),
(1, 1, 3, '10:00-14:00', 20, 100),
(1, 1, 3, '16:00-20:00', 10, 100),
(1, 1, 4, '10:00-14:00', 20, 100),
(1, 1, 4, '16:00-20:00', 30, 100),
(1, 1, 5, '10:00-14:00', 30, 100),
(1, 1, 5, '16:00-20:00', 30, 100),
(1, 1, 6, '10:00-14:00', 40, 100),
(1, 1, 6, '16:00-20:00', 40, 100),
(1, 1, 7, '10:00-14:00', 30, 100),
(1, 1, 7, '16:00-20:00', 30, 100),
(2, 1, 2, '10:00-14:00', 10, 200),
(2, 1, 2, '16:00-20:00', 20, 200),
(2, 1, 3, '10:00-14:00', 10, 200),
(2, 1, 3, '16:00-20:00', 10, 200),
(2, 1, 4, '10:00-14:00', 10, 200),
(2, 1, 4, '16:00-20:00', 10, 200),
(2, 1, 5, '10:00-14:00', 30, 200),
(2, 1, 5, '16:00-20:00', 10, 200),
(2, 1, 6, '10:00-14:00', 10, 200),
(2, 1, 6, '16:00-20:00', 40, 200),
(2, 1, 7, '10:00-14:00', 10, 200),
(2, 1, 7, '16:00-20:00', 20, 200),
(3, 2, 2, '10:00-14:00', 30, 500),
(3, 2, 2, '16:00-20:00', 20, 500),
(3, 2, 3, '10:00-14:00', 20, 500),
(3, 2, 3, '16:00-20:00', 20, 500),
(3, 2, 4, '10:00-14:00', 20, 500),
(3, 2, 4, '16:00-20:00', 10, 500),
(3, 2, 5, '10:00-14:00', 10, 500),
(3, 2, 5, '16:00-20:00', 20, 500),
(3, 2, 6, '10:00-14:00', 20, 500),
(3, 2, 6, '16:00-20:00', 10, 500),
(3, 2, 7, '10:00-14:00', 10, 500),
(3, 2, 7, '16:00-20:00', 40, 500),
(4, 2, 2, '10:00-14:00', 20, 300),
(4, 2, 2, '16:00-20:00', 20, 300),
(4, 2, 3, '10:00-14:00', 20, 300),
(4, 2, 3, '16:00-20:00', 10, 300),
(4, 2, 4, '10:00-14:00', 10, 300),
(4, 2, 4, '16:00-20:00', 30, 300),
(4, 2, 5, '10:00-14:00', 20, 300),
(4, 2, 5, '16:00-20:00', 30, 300),
(4, 2, 6, '10:00-14:00', 10, 300),
(4, 2, 6, '16:00-20:00', 20, 300),
(4, 2, 7, '10:00-14:00', 20, 300),
(4, 2, 7, '16:00-20:00', 10, 300);

-- --------------------------------------------------------

--
-- Table structure for table `D_appointment`
--

CREATE TABLE `D_appointment` (
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_book_timestamp` datetime NOT NULL,
  `dt_stamp` datetime NOT NULL,
  `d_status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `D_appointment`
--

INSERT INTO `D_appointment` (`p_id`, `d_id`, `d_book_timestamp`, `dt_stamp`, `d_status`) VALUES
(1, 1, '2017-12-10 16:00:00', '2017-11-04 21:04:54', 'pending'),
(1, 2, '2018-02-10 20:00:00', '2017-11-04 13:59:24', 'pending'),
(1, 3, '2017-10-12 11:28:13', '2017-10-03 04:29:47', 'success'),
(1, 3, '2018-01-15 16:00:00', '2017-10-15 16:14:35', 'pending'),
(2, 1, '2017-11-23 20:00:00', '2017-11-04 02:24:35', 'pending'),
(2, 4, '2017-11-25 16:00:00', '2017-10-20 20:53:20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `Education`
--

CREATE TABLE `Education` (
  `q_id` int(11) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `comp_year` year(4) NOT NULL,
  `q_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Education`
--

INSERT INTO `Education` (`q_id`, `degree`, `college`, `comp_year`, `q_proof`) VALUES
(1, 'MBBS', 'Bangalore Medical College and Research Institute, Bangalore,', 2003, 'NA'),
(2, 'MRCP (UK)', 'The Royal College Of Psychiatrists, Uk', 2010, 'No_proof'),
(3, 'DHE (Addictions - Leeds University, UK)', 'University of Leeds School of Medicine', 2013, 'NA'),
(4, 'MBBS', 'Bangalore Medical College and Research Institute, Bangalore,', 1994, 'NA'),
(5, 'MD - Medicine', 'Bangalore Medical College and Research Institute, Bangalore', 1999, 'Sorry'),
(6, 'DM - Neurology', 'G B Pant Hospital / Moulana Azad Medical College, New Delhi,', 2002, 'NA'),
(7, 'MBBS', 'Bannu Medical College', 1978, 'NA'),
(8, 'BDS', 'Manipal College of Dental Sciences, Mangalore', 2002, 'hello_proof'),
(9, 'Fellow of Academy of General Education (FAGE)', 'Manipal College of Dental Sciences, Mangalore,', 2002, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback_c`
--

CREATE TABLE `Feedback_c` (
  `c_f_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_ft_stamp` datetime NOT NULL,
  `c_feed_content` varchar(150) NOT NULL,
  `c_votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Feedback_c`
--

INSERT INTO `Feedback_c` (`c_f_id`, `p_id`, `c_id`, `c_ft_stamp`, `c_feed_content`, `c_votes`) VALUES
(1, 1, 1, '2017-06-05 12:10:00', 'It is nice', 1),
(2, 1, 2, '2017-08-07 11:12:00', 'Bad service', 0),
(3, 2, 1, '2017-10-10 14:21:00', 'good', 0),
(4, 2, 2, '2017-04-01 18:17:00', 'Awesome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Feedback_d`
--

CREATE TABLE `Feedback_d` (
  `d_f_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_ft_stamp` datetime NOT NULL,
  `d_feed_content` varchar(150) NOT NULL,
  `d_votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Feedback_d`
--

INSERT INTO `Feedback_d` (`d_f_id`, `p_id`, `d_id`, `d_ft_stamp`, `d_feed_content`, `d_votes`) VALUES
(1, 1, 1, '2015-03-13 23:52:21', 'd_feedback_1', 1),
(2, 1, 2, '2017-04-24 21:54:21', 'd_feedback_2', 0),
(3, 2, 2, '2016-10-28 16:32:51', 'd_feedback_3', 1),
(4, 2, 3, '2017-07-05 01:21:35', 'd_feedback_4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Lab`
--

CREATE TABLE `Lab` (
  `l_id` int(11) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `facilities` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lab`
--

INSERT INTO `Lab` (`l_id`, `l_name`, `addr_id`, `facilities`) VALUES
(1, 'Dr Lal PathLabs', 7, 'Parking not available, E-Reports available, Card accepted'),
(2, 'Janta X-Ray & Clinical Lab. Pvt. Ltd.', 8, 'Parking available, E-Reports available, Card accepted, Male Radiologist Only');

-- --------------------------------------------------------

--
-- Table structure for table `Lab_timing`
--

CREATE TABLE `Lab_timing` (
  `l_id` int(11) NOT NULL,
  `day` int(1) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lab_timing`
--

INSERT INTO `Lab_timing` (`l_id`, `day`, `start_time`, `end_time`) VALUES
(1, 2, '10:00:00', '20:00:00'),
(1, 3, '10:00:00', '20:00:00'),
(1, 4, '10:00:00', '20:00:00'),
(1, 5, '10:00:00', '20:00:00'),
(1, 6, '10:00:00', '20:00:00'),
(1, 7, '10:00:00', '20:00:00'),
(2, 2, '10:00:00', '20:00:00'),
(2, 3, '10:00:00', '20:00:00'),
(2, 4, '10:00:00', '20:00:00'),
(2, 5, '10:00:00', '20:00:00'),
(2, 6, '10:00:00', '20:00:00'),
(2, 7, '10:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `L_appointment`
--

CREATE TABLE `L_appointment` (
  `p_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `l_book_timestamp` datetime NOT NULL,
  `lt_stamp` datetime NOT NULL,
  `l_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `L_appointment`
--

INSERT INTO `L_appointment` (`p_id`, `l_id`, `l_book_timestamp`, `lt_stamp`, `l_status`) VALUES
(1, 1, '2017-07-10 12:00:00', '2017-07-07 08:25:54', 'success'),
(1, 1, '2017-10-02 11:00:00', '2017-10-01 22:53:04', 'success'),
(1, 1, '2017-11-04 19:00:00', '2017-11-06 16:41:54', 'pending'),
(2, 1, '2017-02-05 18:00:00', '2017-02-01 23:40:35', 'success'),
(2, 2, '2017-10-12 16:00:00', '2017-10-10 10:54:32', 'success'),
(2, 2, '2017-11-05 15:00:00', '2017-11-08 09:32:53', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `Medicine`
--

CREATE TABLE `Medicine` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `m_price` int(11) NOT NULL,
  `m_avail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Medicine`
--

INSERT INTO `Medicine` (`m_id`, `m_name`, `m_price`, `m_avail`) VALUES
(1, 'A', 10, 40),
(2, 'B', 20, 78),
(3, 'C', 30, 45),
(4, 'D', 40, 98),
(5, 'E', 50, 78);

-- --------------------------------------------------------

--
-- Table structure for table `Offers`
--

CREATE TABLE `Offers` (
  `c_id` int(11) NOT NULL,
  `serv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Offers`
--

INSERT INTO `Offers` (`c_id`, `serv_id`) VALUES
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Order_content`
--

CREATE TABLE `Order_content` (
  `o_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `d_p_reg_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Order_content`
--

INSERT INTO `Order_content` (`o_id`, `m_id`, `quantity`, `d_p_reg_no`) VALUES
(1, 2, 2, '1234'),
(1, 5, 3, '4567'),
(2, 1, 5, '1451'),
(3, 1, 1, '1234'),
(4, 5, 1, '7458'),
(5, 1, 1, '7582'),
(5, 2, 1, '1234'),
(6, 3, 2, '4587'),
(6, 4, 2, '7415');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `p_contact` bigint(10) NOT NULL,
  `p_email_id` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `timezone` varchar(20) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `language` varchar(30) NOT NULL,
  `p_password` varchar(64) NOT NULL,
  `addr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`p_id`, `p_name`, `image`, `p_contact`, `p_email_id`, `gender`, `dob`, `timezone`, `blood_group`, `language`, `p_password`, `addr_id`) VALUES
(1, 'Bharat', 'NA', 8938894977, 'bharatraj974@gmail.com', 'Male', '1997-11-09', 'UTC+5:30', 'A+', 'Hindi', '12345678', 1),
(2, 'Rahul ram', 'NA', 7217258327, 'rahulramc@hotmail.com', 'Male', '1995-10-05', 'UTC+5:30', 'A+', 'English', 'abcd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `P_order`
--

CREATE TABLE `P_order` (
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `timestamp_in` datetime NOT NULL,
  `payment_id` varchar(20) NOT NULL,
  `o_status` varchar(50) NOT NULL,
  `timestamp_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `P_order`
--

INSERT INTO `P_order` (`o_id`, `p_id`, `total_price`, `timestamp_in`, `payment_id`, `o_status`, `timestamp_out`) VALUES
(1, 1, '190.00', '2017-11-04 11:00:12', 'CASH', 'Not Delivered', '2017-11-10 14:30:15'),
(2, 2, '50.00', '2017-11-01 12:00:04', 'CASH', 'Delivered', '2017-11-05 11:30:15'),
(3, 1, '10.00', '2017-03-01 14:12:10', 'CASH', 'Delivered', '2017-03-10 15:17:18'),
(4, 1, '50.00', '2017-01-01 15:15:11', 'CASH', 'Delivered', '2017-01-07 17:45:28'),
(5, 2, '30.00', '2017-02-05 20:17:12', 'CASH', 'Delivered', '2017-02-08 19:34:21'),
(6, 2, '140.00', '2017-06-08 22:12:17', 'CASH', 'Delivered', '2017-06-15 16:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `Qualification`
--

CREATE TABLE `Qualification` (
  `d_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Qualification`
--

INSERT INTO `Qualification` (`d_id`, `q_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(4, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Services`
--

CREATE TABLE `Services` (
  `serv_id` int(11) NOT NULL,
  `serv_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Services`
--

INSERT INTO `Services` (`serv_id`, `serv_name`) VALUES
(1, 'X-Ray'),
(2, 'Path Laboratory'),
(3, 'Ultrasonography'),
(4, 'ECG'),
(5, 'Pharmacy'),
(6, 'Microsurgery of the Larynx'),
(7, 'Surgery for Snoring'),
(8, 'Head and Neck Tumor / Cancer Surgery'),
(9, 'Rhinoplasty');

-- --------------------------------------------------------

--
-- Table structure for table `Specialization`
--

CREATE TABLE `Specialization` (
  `d_id` int(11) NOT NULL,
  `specialization` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Specialization`
--

INSERT INTO `Specialization` (`d_id`, `specialization`) VALUES
(1, 'Addiction Psychiatrist'),
(1, 'Forensic Psychiatrist'),
(1, 'Geriatric Psychiatrist'),
(1, 'Neuropsychiatrist'),
(1, 'Psychiatrist'),
(2, 'Neurologist'),
(2, 'Neurosurgeon'),
(3, 'General Physician'),
(4, 'Cosmetic/Aesthetic Dentist'),
(4, 'Dental Surgeon'),
(4, 'Implantologist'),
(5, 'Orthodontist'),
(5, 'Prosthodontist');

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE `Test` (
  `l_id` int(11) NOT NULL,
  `test_name` varchar(100) NOT NULL,
  `test_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Test`
--

INSERT INTO `Test` (`l_id`, `test_name`, `test_price`) VALUES
(1, 'Double Screen Test', '2000.00'),
(1, 'Eeg', '1500.00'),
(1, 'Eliza for Measles lgg', '750.00'),
(1, 'Fluid Chloride', '80.00'),
(2, 'ACID PHOSPHATASE TOTAL', '170.00'),
(2, 'Activated Partial Thromboplastin Time', '500.00'),
(2, 'AFB STAIN MISCELLANEOUS', '400.00'),
(2, 'ANCA - PR - 3 (SERIN PROTEINASE - 3 ANTIBODIES) EIA', '1800.00'),
(2, 'ANDROSTENEDIONE', '1820.00');

-- --------------------------------------------------------

--
-- Table structure for table `Works`
--

CREATE TABLE `Works` (
  `d_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Works`
--

INSERT INTO `Works` (`d_id`, `c_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`addr_id`);

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `Clinic`
--
ALTER TABLE `Clinic`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `Clinic_timing`
--
ALTER TABLE `Clinic_timing`
  ADD PRIMARY KEY (`c_id`,`day`);

--
-- Indexes for table `Consult`
--
ALTER TABLE `Consult`
  ADD PRIMARY KEY (`p_id`,`d_id`,`ct_stamp`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `Doctor_timing`
--
ALTER TABLE `Doctor_timing`
  ADD PRIMARY KEY (`d_id`,`c_id`,`day`,`slot`);

--
-- Indexes for table `D_appointment`
--
ALTER TABLE `D_appointment`
  ADD PRIMARY KEY (`p_id`,`d_id`,`d_book_timestamp`);

--
-- Indexes for table `Education`
--
ALTER TABLE `Education`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `Feedback_c`
--
ALTER TABLE `Feedback_c`
  ADD PRIMARY KEY (`c_f_id`);

--
-- Indexes for table `Feedback_d`
--
ALTER TABLE `Feedback_d`
  ADD PRIMARY KEY (`d_f_id`);

--
-- Indexes for table `Lab`
--
ALTER TABLE `Lab`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `Lab_timing`
--
ALTER TABLE `Lab_timing`
  ADD PRIMARY KEY (`l_id`,`day`);

--
-- Indexes for table `L_appointment`
--
ALTER TABLE `L_appointment`
  ADD PRIMARY KEY (`p_id`,`l_id`,`l_book_timestamp`);

--
-- Indexes for table `Medicine`
--
ALTER TABLE `Medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `Offers`
--
ALTER TABLE `Offers`
  ADD PRIMARY KEY (`c_id`,`serv_id`);

--
-- Indexes for table `Order_content`
--
ALTER TABLE `Order_content`
  ADD PRIMARY KEY (`o_id`,`m_id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `P_order`
--
ALTER TABLE `P_order`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `Qualification`
--
ALTER TABLE `Qualification`
  ADD PRIMARY KEY (`d_id`,`q_id`);

--
-- Indexes for table `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`serv_id`);

--
-- Indexes for table `Specialization`
--
ALTER TABLE `Specialization`
  ADD PRIMARY KEY (`d_id`,`specialization`);

--
-- Indexes for table `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`l_id`,`test_name`);

--
-- Indexes for table `Works`
--
ALTER TABLE `Works`
  ADD PRIMARY KEY (`d_id`,`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `addr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Article`
--
ALTER TABLE `Article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Clinic`
--
ALTER TABLE `Clinic`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Education`
--
ALTER TABLE `Education`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Feedback_c`
--
ALTER TABLE `Feedback_c`
  MODIFY `c_f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Feedback_d`
--
ALTER TABLE `Feedback_d`
  MODIFY `d_f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Lab`
--
ALTER TABLE `Lab`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Lab_timing`
--
ALTER TABLE `Lab_timing`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Medicine`
--
ALTER TABLE `Medicine`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `P_order`
--
ALTER TABLE `P_order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Services`
--
ALTER TABLE `Services`
  MODIFY `serv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
