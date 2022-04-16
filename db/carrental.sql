-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2022 at 10:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2022-04-20 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'muchira@gmail.com', 10, '31-Mar-2010', '18-Dec-1978', 'Ut laboriosam minim', 1, '2022-04-16 03:08:37'),
(5, 'muchira@gmail.com', 6, '29-Nov-1983', '03-Apr-1974', 'A voluptatem sit id ', 1, '2022-04-16 03:09:29'),
(6, 'sheikh@gmail.com', 10, '25-Sep-2011', '24-Mar-1981', 'Enim facere accusant', 0, '2022-04-16 07:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2022-04-28 16:24:50', '2022-04-15 23:00:02'),
(3, 'Audi', '2022-04-27 16:25:03', '2022-04-15 23:00:32'),
(4, 'Nissan', '2022-04-14 16:25:13', '2022-04-15 23:01:11'),
(5, 'Toyota', '2022-04-28 16:25:24', '2022-04-15 23:01:28'),
(7, 'Marutiu', '2022-06-16 06:22:13', '2022-04-15 23:01:45'),
(8, 'lambo', '2022-04-15 23:20:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'dont-come\r\n																							', 'HCIgroup@gmail.com', '0707070707');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Testor', 'test@gmail.com', '0707070707', 'lorem', '2022-04-15 21:17:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font></strong></font></p><p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\"><br></font></strong></font></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">privacy policy</span></div>'),
(3, 'About Us ', 'aboutus', '																																								<p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-weight: 700;\">rentNride A Car</span></span>&nbsp;has a new face. After more than 20 years in business, we decided to give a fresher look to our brand and our services. With our fully renewed fleet of vehicles, we are ready to meet all expectations and requirements.</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">Why choose us?</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"font-size: large;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px;\">- If you want to book directly through a supplier, and not through a broker – choose</span><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-weight: 700;\">&nbsp;us</span></span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">-This will give you better flexibility in terms of vehicle choices;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">- vehicle make and model will be confirmed, and not “similar” to those you selected;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">-&nbsp; you can directly negotiate some of the terms and conditions, payment options, especially if you require unique or long term rental service;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">- you can book “commission free”;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">- you can reach us 24/7 on our mobile numbers;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">- you can call us free from the “Free call” service on our website;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">We offer a varied fleet of cars, ranging from the compact Toyota Yaris to the 8-seater VW Multivan. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">&nbsp;</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px none; margin: 0px; outline: none 0px; padding: 0px; font-size: large;\">We pride ourselves on personalized service, great cars and excellent rates.</span></p><p style=\"border: 0px none; margin-bottom: 10px; outline: none 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"font-size: large;\"><br></span></p><div><span style=\"border: 0px none; font-size: 10pt; margin: 0px; outline: none 0px; padding: 0px;\"><br></span></div>\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																														<p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/vehicle-warranty-covered-by-non-dealer-auto-shop/\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">Do I need to take my vehicle to the dealer to be covered under warranty?</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/difference-between-regular-oil-and-eco-power-oil/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What is the difference between regular oil and your Eco Power oil?</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-often-do-i-need-an-oil-change-in-victoria-bc/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How often do I need an oil change?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/can-i-drop-off-my-car-before-work/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Can I drop off my car before work?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/fleet-maintenance-packages/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Do you offer fleet maintenance packages?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/manual-and-automatic-transmissions-servicing-needs/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Do manual and automatic transmissions have different servicing needs?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-many-kms-before-transmission-replacement/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How many kilometres can a transmission take before needing replacement?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/what-is-the-biggest-problem-with-transmissions/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What is the biggest problem with transmissions?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/transmission-fluid-flush-cost/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What would it cost to flush out my old transmission fluid and fill with new fluid?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-often-should-i-replace-my-windshield-wiper-blades/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(20, 104, 160); cursor: pointer; outline-width: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How often should I replace my windshield wiper blades?”</a></p><div><br></div>\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'sheikh@gmail.com', '2022-04-16 08:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'test@gmail.com', 'Provident eveniet ', '2022-04-16 00:20:46', 1),
(4, 'test@gmail.com', 'Ipsa dicta tenetur ', '2022-04-16 00:28:20', NULL),
(5, 'sheikh@gmail.com', 'Tempora incididunt q', '2022-04-16 07:21:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'Testor', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '03/07/2001', 'madaraka', 'Nairobi', 'Kenya', '2022-06-13 20:03:36', '2022-04-15 23:03:29'),
(5, 'muchira', 'muchira@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0709080609', NULL, NULL, NULL, NULL, '2022-04-16 00:29:39', NULL),
(6, 'jeff', 'jeff@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0709080609', NULL, NULL, NULL, NULL, '2022-04-16 00:30:22', NULL),
(7, 'Melanie Ratliff', 'rykysunuc@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Culpa dol', NULL, NULL, NULL, NULL, '2022-04-16 00:56:34', NULL),
(8, 'Kaitlin Irwin', 'qykabelek@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Eos labor', NULL, NULL, NULL, NULL, '2022-04-16 00:56:51', NULL),
(9, 'Xandra Serrano', 'cusyxe@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Maiores de', NULL, NULL, NULL, NULL, '2022-04-16 00:57:10', NULL),
(10, 'sheikh', 'sheikh@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0755676875', NULL, NULL, NULL, NULL, '2022-04-16 07:15:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'lambo', 8, 'fast sports car', 1000, 'Petrol', 2022, 2, 'logg.png', 'img_390x390 copy.jpg', 'dealer-logo.jpg', 'knowledge_base_bg.jpg', '', 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2022-04-15 23:23:24', '2022-04-15 23:57:19'),
(7, 'Sint eum adipisci n', 2, 'Alias enim aut et ni', 91, 'Petrol', 2001, 6, 'banner-image-1.jpg', 'about_us_img4.jpg', 'recent-car-6.jpg', 'recent-car-5.jpg', '', 1, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-16 00:01:20', '2022-04-16 00:05:09'),
(8, 'Ut impedit odio iru', 3, 'Repellendus Ut veni', 69, 'Diesel', 1992, 4, 'about_us_img1.jpg', 'car_755x430.png', 'recent-car-2.jpg', 'about_us_img2.jpg', '', 1, 1, NULL, 1, 1, NULL, NULL, 1, NULL, 1, NULL, 1, '2022-04-16 00:02:14', NULL),
(9, 'In doloremque qui vi', 4, 'Minima sapiente aut ', 434, 'Diesel', 2007, 3, 'testimonial-bg.jpg', 'testimonial-bg.jpg', 'recent-blog-1.jpg', 'aboutus-page-header-img.jpg', '', NULL, 1, 1, NULL, 1, NULL, 1, 1, 1, NULL, 1, 1, '2022-04-16 00:03:08', NULL),
(10, 'Sunt est veniam obc', 3, 'Reprehenderit qui eo', 858, 'Petrol', 2012, 2, 'banner-image-2.jpg', 'banner-image.jpg', 'banner-image-2.jpg', 'about_us_img1 copy.jpg', '', NULL, 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, '2022-04-16 00:03:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
