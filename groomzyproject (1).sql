-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2025 at 04:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groomzyproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  `adminPhone` varchar(50) NOT NULL,
  `adminAddress` varchar(80) NOT NULL,
  `permissionLevel` varchar(50) NOT NULL,
  `userID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminEmail`, `adminPhone`, `adminAddress`, `permissionLevel`, `userID`, `deleted_at`) VALUES
(1, 'Sarah Lim', 'sarah.lim@email.com', '+65 8123 4456', '12 Orchard Road, Singapore', 'Schedule Management', 1, NULL),
(2, 'Daniel Wong', 'daniel.wong@email.com', '+65 9234 8890', '55 Bukit Timah Road, Singapore', 'Service Management', 1, NULL),
(3, 'Priya Nair', 'priya.nair@email.com', '+65 9655 3011', '88 Serangoon Central, Singapore', 'Booking Management', 1, NULL),
(4, 'Lucas Tan', 'lucas.tan@email.com', '+65 9744 6622', '21 Tampines Street, Singapore', 'User Account Management', 1, NULL),
(5, 'Mei Chen', 'mei.chen@email.com', '+65 9012 7788', '67 Yishun Ring Road, Singapore', 'System & Data Maintenance', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentID` int(11) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` time NOT NULL,
  `specialRequest` text NOT NULL,
  `staffID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `petID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `completionTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `appointmentDate`, `appointmentTime`, `specialRequest`, `staffID`, `customerID`, `petID`, `invoiceID`, `deleted_at`, `status`, `completionTime`) VALUES
(1, '2025-11-20', '10:00:00', 'Extra gentle handling', 1, 1, 1, 1, NULL, 'Completed', '2025-11-29 00:14:45'),
(2, '2025-11-21', '11:15:00', 'No perfume spray', 2, 2, 2, 2, NULL, 'Pending', NULL),
(3, '2025-11-22', '09:00:00', 'Quiet room requested', 2, 3, 3, 3, NULL, 'Pending', NULL),
(4, '2025-11-22', '10:05:00', 'Gentle nail clipping only', 3, 3, 4, 4, NULL, 'Pending', NULL),
(7, '2025-11-27', '09:00:00', 'Extra gentle handling', 4, 1, 21, 5, NULL, 'Completed', NULL),
(8, '2025-11-27', '10:00:00', 'No perfume spray', 1, 1, 22, 6, NULL, 'Completed', NULL),
(9, '2025-11-29', '11:00:00', 'Quiet room requested', 11, 12, 16, 7, NULL, 'Completed', '2025-11-29 14:07:41'),
(10, '2025-11-30', '13:00:00', 'Use hypoallergenic shampoo', 2, 17, 23, 8, NULL, 'Completed', '2025-11-29 14:39:19'),
(11, '2025-12-02', '10:00:00', 'Extra Gentle Handling', 4, 2, 25, 9, NULL, 'Completed', '2025-12-01 09:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_service`
--

CREATE TABLE `appointment_service` (
  `appointment_ServiceID` int(11) NOT NULL,
  `appointmentID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `service_status` enum('Pending','Completed') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_service`
--

INSERT INTO `appointment_service` (`appointment_ServiceID`, `appointmentID`, `serviceID`, `deleted_at`, `service_status`) VALUES
(2, 1, 5, NULL, 'Completed'),
(3, 2, 8, NULL, 'Completed'),
(4, 2, 19, NULL, 'Completed'),
(5, 3, 5, NULL, 'Completed'),
(6, 3, 6, NULL, 'Completed'),
(7, 4, 9, NULL, 'Completed'),
(8, 7, 5, NULL, 'Pending'),
(9, 8, 19, NULL, 'Pending'),
(10, 10, 18, NULL, 'Pending'),
(11, 11, 9, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerPhone` varchar(50) NOT NULL,
  `customerAddress` varchar(80) NOT NULL,
  `customerPassword` varchar(20) NOT NULL,
  `loyaltyStatus` varchar(50) NOT NULL,
  `userID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `customerEmail`, `customerPhone`, `customerAddress`, `customerPassword`, `loyaltyStatus`, `userID`, `deleted_at`) VALUES
(1, 'Aileen Tan', 'aileen.tan@email.com', '+65 9011 2245', '12 Orchard Road, Singapore', 'aileen11', 'New Customer', 3, NULL),
(2, 'Benjamin Lee', 'benlee89@email.com', '+65 9332 7810', '44 Tanjong Pagar Road, Singapore', 'benjamin12', 'Regular Customer', 3, NULL),
(3, 'Chandra Kumar', 'chandra.kumar@email.com', '+65 9621 5543', '1 North Bridge Road, Singapore', 'chandra13', 'Loyal Member', 3, NULL),
(4, 'Denise Wong', 'denise.wong@email.com', '+65 8776 1209', '10 Bishan Street 22, Singapore', 'denise14', 'Premium Member', 3, NULL),
(5, 'Ethan Goh', 'ethan.goh@email.com', '+65 9812 4421', '90 Tampines Street, Singapore', 'ethan155', 'New Customer', 3, NULL),
(6, 'Farah Rahman', 'farah.rahman@email.com', '+65 9010 6652', '36 Robinson Road, Singapore', 'farah166', 'Regular Customer', 3, NULL),
(7, 'Gabriel Chua', 'gabriel.chua@email.com', '+65 9654 8890', '3 Church Street, Singapore', 'gabriel7', 'Loyal Member', 3, NULL),
(8, 'Hannah Yap', 'hannah.yap@email.com', '+65 9333 7711', '2 George Street, Singapore', 'hannah18', 'VIP Member', 3, NULL),
(9, 'Ivan Tan', 'ivan.tan@email.com', '+65 9823 6654', '4 Anson Road, Singapore', 'ivan.tan9', 'Regular Customer', 3, NULL),
(10, 'Jasmine Neo', 'jasmine.neo@email.com', '+65 8311 9922', '8 Hoe Chiang Road, Singapore', 'jasmine01', 'Premium Member', 3, NULL),
(11, 'Kenneth Lim', 'kenneth.lim@email.com', '+65 9777 4500', '7 Sembawang Crescent, Singapore', 'kenneth00', 'New Customer', 3, NULL),
(12, 'Laura Chen', 'laura.chen@email.com', '+65 8444 9081', '99 Yishun Central, Singapore', 'laura.ch2', 'Loyal Member', 3, NULL),
(13, 'Muhammad Irfan', 'irfan.mdkhan@email.com', '+65 8220 7654', '15 Jurong West Street, Singapore', 'irfan.m3', 'Regular Customer', 3, NULL),
(14, 'Naomi Tan', 'naomi.tan@email.com', '+65 9053 3492', '230 Bukit Timah Road, Singapore', 'naomi.ta9', 'VIP Member', 3, NULL),
(15, 'Oliver Soo', 'oliver.soo@email.com', '+65 9344 2299', '11 Marina Bay Residences, Singapore', 'oliver.s5', 'Premium Member', 3, NULL),
(16, 'Aileen Tan', 'aileen.tan12@email.com', '+65 9011 2245', '12 Orchard Road, Singapore', 'aileen11', 'New Customer', 3, NULL),
(17, 'Huan Huan', 'huanhuan13@email.com', '+65 4580 6942', '3 Orchard Road, Singapore', 'huanhuan13', 'New Customer', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) NOT NULL,
  `date` date NOT NULL,
  `totalAmount` double NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `date`, `totalAmount`, `deleted_at`) VALUES
(1, '2025-11-20', 49.5, NULL),
(2, '2025-11-21', 110, NULL),
(3, '2025-11-22', 77, '2025-11-28'),
(4, '2025-11-22', 11, NULL),
(5, '2025-11-27', 45, NULL),
(6, '2025-11-28', 66, NULL),
(7, '2025-11-29', 55, NULL),
(8, '2025-11-29', 45, NULL),
(9, '2025-12-01', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membershipID` int(11) NOT NULL,
  `planType` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `customerID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membershipID`, `planType`, `description`, `duration`, `price`, `customerID`, `deleted_at`) VALUES
(1, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 1, NULL),
(2, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 2, NULL),
(3, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 3, NULL),
(4, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 3, NULL),
(5, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 4, NULL),
(6, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 5, NULL),
(7, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 6, NULL),
(8, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 6, NULL),
(9, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 7, NULL),
(10, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 8, NULL),
(11, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 8, NULL),
(12, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 9, NULL),
(13, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 9, NULL),
(14, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 10, NULL),
(15, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 11, NULL),
(16, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 12, NULL),
(17, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 12, NULL),
(18, 'Basic', 'Affordable entry plan offering basic grooming advantages for new customers', '1 month', 25, 13, NULL),
(19, 'Premium', 'Offers weekend priority, monthly perks, and extended grooming service discounts', '3 months', 70, 14, NULL),
(20, 'Elite', 'VIP grooming sessions, unlimited priority booking, and exclusive premium treatments', '6 months', 150, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `paymentDate` date NOT NULL,
  `paymentTime` time NOT NULL,
  `paymentTotal` double NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentMethod`, `paymentDate`, `paymentTime`, `paymentTotal`, `invoiceID`, `deleted_at`) VALUES
(1, 'Cash', '2025-11-20', '12:00:00', 49.5, 1, NULL),
(2, 'Online', '2025-11-21', '13:30:00', 110, 2, NULL),
(3, 'Card', '2025-11-22', '11:00:00', 77, 3, NULL),
(4, 'Cash', '2025-11-27', '23:13:33', 45, 5, NULL),
(5, 'Online', '2025-11-27', '23:14:19', 60, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `petID` int(11) NOT NULL,
  `petName` varchar(20) NOT NULL,
  `petType` varchar(20) NOT NULL,
  `petBreed` varchar(50) NOT NULL,
  `petAge` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`petID`, `petName`, `petType`, `petBreed`, `petAge`, `customerID`, `deleted_at`) VALUES
(1, 'Milo', 'Dog', 'Golden Retriever', 3, 1, NULL),
(2, 'Coco', 'Dog', 'Pomeranian', 2, 2, NULL),
(3, 'Luna', 'Cat', 'British Shorthair', 4, 3, NULL),
(4, 'Marshmallow', 'Dog', 'Husky', 3, 3, NULL),
(5, 'Rocky', 'Dog', 'Siberian Husky', 5, 4, NULL),
(6, 'Bella', 'Dog', 'Shih Tzu', 1, 5, NULL),
(7, 'Simba', 'Cat', 'Persian', 5, 6, NULL),
(8, 'Pepper', 'Dog', 'Chihuahua', 3, 6, NULL),
(9, 'Oreo', 'Dog', 'Beagle', 2, 7, NULL),
(10, 'Nala', 'Cat', 'Ragdoll', 3, 8, NULL),
(11, 'Kiwi', 'Cat', 'Siamese', 2, 8, NULL),
(12, 'Leo', 'Dog', 'French Bulldog', 4, 9, NULL),
(13, 'Bruno', 'Dog', 'German Shepherd', 5, 9, NULL),
(14, 'Ginger', 'Cat', 'American Shorthair', 4, 10, NULL),
(15, 'Toby', 'Dog', 'Corgi', 2, 11, NULL),
(16, 'Mochi', 'Cat', 'Scottish Fold', 5, 12, NULL),
(17, 'Pudding', 'Dog', 'Maltese', 4, 12, NULL),
(18, 'Max', 'Dog', 'Labrador Retriever', 3, 13, NULL),
(19, 'Snowy', 'Dog', 'Samoyed', 1, 14, NULL),
(20, 'Shadow', 'Cat', 'Russian Blue', 4, 15, NULL),
(21, 'Milo', 'Dog', 'Golden Retriever', 3, 1, NULL),
(22, 'Coco', 'Dog', 'Pomeranian', 2, 1, NULL),
(23, 'Blessing', 'Dog', 'Chihuahua', 2, 17, NULL),
(24, 'Zack', 'Cat', 'British Shorthair', 2, 17, '2025-11-29'),
(25, 'Coco', 'Dog', 'Pomeranian', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleID` int(11) NOT NULL,
  `availableDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `staffID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleID`, `availableDate`, `startTime`, `endTime`, `staffID`, `deleted_at`) VALUES
(1, '2025-11-21', '11:15:00', '12:05:00', 2, '2025-11-28'),
(2, '2025-11-22', '10:05:00', '10:25:00', 3, NULL),
(3, '2025-11-28', '10:30:00', '10:50:00', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `serviceImage` varchar(50) NOT NULL,
  `serviceDescription` text NOT NULL,
  `duration` time NOT NULL,
  `price` double NOT NULL,
  `serviceTypeID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `serviceName`, `serviceImage`, `serviceDescription`, `duration`, `price`, `serviceTypeID`, `deleted_at`) VALUES
(1, 'Basic Bath', 'basic_bath.jpg', 'Gentle bath using mild shampoo to keep the pet’s coat clean and shiny', '00:30:00', 20, 1, NULL),
(2, 'Deep Cleaning Bath', 'deep_bath.jpg', 'Thorough bath removing dirt, odor, and loose hair with conditioning finish', '00:45:00', 30, 1, NULL),
(3, 'Medicated Bath (for skin conditions)', 'medicated_bath.jpg', 'Special shampoo for pets with allergies or skin irritations', '00:45:00', 35, 1, NULL),
(4, 'Flea & Tick Bath', 'fela_bath.avif', 'Anti-parasite treatment to remove and prevent fleas and ticks', '00:40:00', 32, 1, NULL),
(5, 'Full Body Haircut', 'full_haircut.avif', 'Professional full-body haircut based on breed style or owner preference', '01:00:00', 45, 2, NULL),
(6, 'Trimming (Face, Paws, Tail)', 'trimming.jpg', 'Light trimming around face, paws, and tail for a neat appearance', '00:30:00', 25, 2, NULL),
(7, 'Deshedding Treatment', 'deshedding.avif', 'Removes loose undercoat to reduce shedding and maintain coat health', '00:45:00', 35, 2, NULL),
(8, 'Puppy Cut', 'puppy_cut.webp', 'Special haircut style to keep pets comfortable and stylish', '00:50:00', 40, 2, NULL),
(9, 'Nail Clipping', 'nail_clip.jpg', 'Safe and gentle trimming of pet’s nails', '00:15:00', 10, 3, NULL),
(10, 'Nail Grinding', 'nail_grind.webp', 'Nail shaping with grinder to smooth sharp edges', '00:20:00', 12, 3, NULL),
(11, 'Paw Pad Trimming', 'paw_trim.webp', 'Cleaning and trimming fur between paw pads for hygiene', '00:20:00', 20, 3, NULL),
(12, 'Paw Moisturizing Treatment', 'paw_moisturizing.webp', 'Hydrating treatment to keep paw pads soft and crack-free', '00:25:00', 18, 3, NULL),
(13, 'Ear Cleaning', 'ear_clean.webp', 'Gentle cleaning of the inner ear to prevent infection', '00:20:00', 12, 4, NULL),
(14, 'Ear Hair Removal', 'hair_remove.jpg', 'Removes excess ear hair to improve ventilation and prevent infections', '00:25:00', 15, 4, NULL),
(15, 'Tear Stain Cleaning', 'tear_clean.webp', 'Cleans and brightens fur around eyes for a fresh look', '00:15:00', 10, 4, NULL),
(16, 'Spa Treatment', 'spa.webp', 'Relaxing massage with natural oils to calm and rejuvenate pets', '01:00:00', 50, 5, NULL),
(17, 'Whitening Shampoo', 'shampoo.webp', 'Brightens white or light-colored coats naturally', '00:40:00', 30, 5, NULL),
(18, 'Tick & Flea Removal Package', 'fela_treatment.jpg', 'Complete treatment to remove and prevent parasites', '00:50:00', 45, 5, NULL),
(19, 'Seasonal Grooming Package', 'full_grooming.jpg', 'Full grooming combo tailored for seasonal coat care', '01:15:00', 60, 5, NULL),
(20, 'Teeth Brushing', 'teeth_brush_1.jpg', 'Finger brush or soft toothbrush to gently scrub the pet\'s teeth and gums', '00:15:00', 10, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

CREATE TABLE `servicetype` (
  `serviceTypeID` int(11) NOT NULL,
  `serviceTypeName` varchar(80) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicetype`
--

INSERT INTO `servicetype` (`serviceTypeID`, `serviceTypeName`, `deleted_at`) VALUES
(1, 'Bathing & Cleaning', NULL),
(2, 'Hair & Coat Care', NULL),
(3, 'Nail & Paw Care', NULL),
(4, 'Ear & Eye Care', NULL),
(5, 'Special Treatments', NULL),
(6, 'Styling & Finishing', '2025-10-07'),
(7, 'None', '2025-10-09'),
(8, 'None', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(50) NOT NULL,
  `staffEmail` varchar(50) NOT NULL,
  `staffPassword` varchar(255) NOT NULL DEFAULT '',
  `staffPhone` varchar(50) NOT NULL,
  `staffAddress` varchar(80) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `skillLevel` varchar(50) NOT NULL,
  `userID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `staffEmail`, `staffPassword`, `staffPhone`, `staffAddress`, `Password`, `skillLevel`, `userID`, `deleted_at`) VALUES
(1, 'Amanda Lee  ', 'amanda.lee@email.com', 'amanda1', '+65 8122 4490', '14 Orchard Road, Singapore', '', 'Haircut Specialist', 2, NULL),
(2, 'Wendell Keith', 'wendell.keith@email.com', 'wendell0', '+65 3745 2558', '20 Robison Road, Singapore', '', 'Haircut Specialist', 2, NULL),
(3, 'Kelvin Tan', 'kelvin.tan@email.com', 'kelvin8', '+65 9233 5598', '6 Shenton Way, Singapore', '', 'Nail Clipping Specialist', 2, NULL),
(4, 'Shalini Kumar', 'shalini.kumar@email.com', 'shalini6', '+65 9674 1022', '21 Robison Road, Singapore', '', 'Trimming Specialist', 2, NULL),
(5, 'Marcus Wong', 'marcus.wong@email.com', 'marcus13', '+65 9811 7645', '8 Shenton Way, Singapore', '', 'Ear Cleaning Specialist', 2, NULL),
(6, 'Chloe Lim', 'chloe.lim@email.com', 'chloe22', '+65 9001 8844', '9 Tampines Hub, Singapore', '', 'Bath Specialist', 2, NULL),
(7, 'Ying Li', 'ying.li@email.com', 'ying19', '+65 4432 1098', '6 Raffles Quay, Singapore', '', 'Bath Specialist', 2, '2025-11-28'),
(8, 'Haruto Sato', 'haruto.sato@email.com', 'haruto77', '+65 8890 7723', '33 Punggol Field, Singapore', '', 'Paw Treatment Specialist', 2, NULL),
(9, 'Mei Ling Chia', 'meiling.chia@email.com', 'meiling5', '+65 9650 5101', '10 Collyer Quay, Singapore', '', 'Flea & Tick Treatment Specialist', 2, NULL),
(10, 'Jonathan Goh', 'jonathan.goh@email.com', 'jonathan06', '+65 9754 6612', '10 Anson Road, Singapore', '', 'Full-Grooming All-Round Specialist', 2, NULL),
(11, 'Emily Tan', 'emily.tan@email.com', 'emily20', '+65 1098 7654', '60 Paya Lebar Road, Singapore', '', 'Full-Grooming All-Round Specialist', 2, NULL),
(12, 'Pea', 'pea77@email.com', 'peaa77', '+65 1185 0969', '2 Shenton Way, Singapore', '', 'Flea & Tick Treatment Specialist', 2, NULL),
(13, 'Max', 'max001@email.com', 'max-001', '+9597470010', '2 Church Street, Singapore', '', 'Ear Cleaning Specialist', 2, NULL),
(14, 'Wutt Hmone', 'wutthmone6@email.com', 'wutthmone6', '+65 2558 5473', '3 Anson Road, Singapore', '', 'Trimming Specialist', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_service`
--

CREATE TABLE `staff_service` (
  `staff_serviceID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_service`
--

INSERT INTO `staff_service` (`staff_serviceID`, `staffID`, `serviceID`, `deleted_at`) VALUES
(1, 1, 5, NULL),
(3, 1, 8, NULL),
(4, 1, 19, NULL),
(5, 2, 5, NULL),
(6, 2, 19, NULL),
(7, 3, 9, NULL),
(8, 3, 10, NULL),
(9, 4, 6, NULL),
(10, 4, 11, NULL),
(11, 4, 12, NULL),
(12, 5, 13, NULL),
(13, 5, 14, NULL),
(14, 6, 1, NULL),
(15, 6, 2, NULL),
(16, 6, 3, NULL),
(17, 6, 4, NULL),
(18, 7, 1, NULL),
(19, 7, 2, NULL),
(20, 7, 3, NULL),
(21, 7, 4, NULL),
(22, 8, 9, NULL),
(23, 8, 10, NULL),
(24, 8, 11, NULL),
(25, 8, 12, NULL),
(26, 9, 3, NULL),
(27, 9, 4, NULL),
(28, 9, 18, NULL),
(29, 10, 7, NULL),
(30, 10, 15, NULL),
(31, 10, 16, NULL),
(32, 10, 17, NULL),
(33, 10, 18, NULL),
(34, 11, 7, NULL),
(35, 11, 15, NULL),
(36, 11, 16, NULL),
(37, 11, 17, NULL),
(38, 11, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userType`, `deleted_at`) VALUES
(1, 'Admin', NULL),
(2, 'Staff', NULL),
(3, 'Customer', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `petID` (`petID`),
  ADD KEY `invoiceID` (`invoiceID`);

--
-- Indexes for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD PRIMARY KEY (`appointment_ServiceID`),
  ADD KEY `appointmentID` (`appointmentID`),
  ADD KEY `serviceID` (`serviceID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membershipID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `invoiceID` (`invoiceID`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`petID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleID`),
  ADD KEY `staffID` (`staffID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `serviceTypeID` (`serviceTypeID`);

--
-- Indexes for table `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`serviceTypeID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD PRIMARY KEY (`staff_serviceID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `serviceID` (`serviceID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `appointment_service`
--
ALTER TABLE `appointment_service`
  MODIFY `appointment_ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membershipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `petID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `serviceTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_service`
--
ALTER TABLE `staff_service`
  MODIFY `staff_serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`petID`) REFERENCES `pet` (`petID`),
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`);

--
-- Constraints for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD CONSTRAINT `appointment_service_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointment` (`appointmentID`),
  ADD CONSTRAINT `appointment_service_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`);

--
-- Constraints for table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`serviceTypeID`) REFERENCES `servicetype` (`serviceTypeID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `staff_service`
--
ALTER TABLE `staff_service`
  ADD CONSTRAINT `staff_service_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  ADD CONSTRAINT `staff_service_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
