-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 05:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-12-27 14:31:17');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'marcello@gmail.com', 9, '08/01/2024', '15/01/2024', 'Pesan 1 Motor Nmax', 1, '2024-01-08 03:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Honda', '2024-01-04 03:51:46', NULL),
(2, 'Yamaha', '2024-01-04 03:51:46', NULL),
(3, 'Kawazaki', '2024-01-04 03:51:46', NULL),
(4, 'Suzuki', '2024-01-04 03:51:46', NULL),
(5, 'Benelli', '2024-01-04 03:51:46', NULL),
(6, 'KTM', '2024-01-04 03:51:46', NULL),
(7, 'TVS', '2024-01-04 03:51:46', NULL),
(8, 'Viar', '2024-01-04 03:51:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'STIKI MALANG																							', 'mprobusinessaja@gmail.com', '0881026433688');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Marcello Ilham', 'marcelloilham54@gmail.com', '08962597608', 'Heyoo', '2023-12-27 16:58:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Last updated: December 05, 2017\nPlease read these Terms and Conditions (\"Terms\", \"Terms and Conditions\") carefully before using the ->code-projects.org/ website (the \"Service\") operated by Code Projects (\"us\", \"we\", or \"our\").\nYour access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service.\nBy accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. Terms and Conditions from TermsFeed for Code Projects. Links To Other Web Sites\nOur Service may contain links to third-party web sites or services that are not owned or controlled by Code Projects.\nCode Projects has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that Code Projects shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.\nWe strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit. Governing Law\nThese Terms shall be governed and construed in accordance with the laws of New York, United States, without regard to its conflict of law provisions.\nOur failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service, and supersede and replace any prior agreements we might have between us regarding the Service. Changes\nWe reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.\nBy continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service. Contact Us\nIf you have any questions about these Terms, please contact us. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">WE ARE THE BIKE RENTAL MANAGER. The only 100% dedicated bike rental booking website. The first Bike Rental Manager (BRM) shop was our own bike shop. Ever Since it has been our aim to make bike rental easier for everyone, everywhere.We focus on making bike rentals easier for you.Your rental business has a unique set of challenges. We are the only dedicated bike rental site and will be able to offer you a solution to match your needs.Get in touch with us today! We provide affordable bike rates, we hae lost of Satiisfied customers feedback, you can have a look at our home page too!! </span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">How do I use discounts coupons?\nExcept for promotion codes, Our discounts are applied automatically if your reservation meets any of the criteria mentioned above.\n\nTo use a promotion code, simply enter the code on the homepage widget as you start your reservation. You can do this by selecting the \"Have a promotion code?\" prompt. Promotion codes can also be entered on the checkout page, under Reservation Total. Please note that the promotion code prompt does not appear for certain types of reservations, such as reservations made on the Deals page.\n<br>\nOur Discounts Terms & Conditions\nWe no longer offer or accept returning customer discounts. All discounts are non-transferable and cannot be combined with additional promotions or discounts.</br>\n\n* Liability in case accident:\nThe hirer should have coverage through his own accident and liability insurance.\nThe renting company is not responsible under any circumstances for accidents or damages caused to the hirer or which the hirer causes to any third party or cases of liability </span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'ilham.marcello@gmail.com', '2023-12-27 16:55:12');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'marcello@gmail.com', 'Mantapp', '2024-01-08 04:03:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(13) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Marcello Ilham', 'marcelloaja@gmail.com', 'ad556d63e9333734ab1fd7e76f753269', '0881026433688', NULL, NULL, NULL, NULL, '2023-12-27 16:53:48', NULL),
(6, 'Marcello Ilham', 'marcello@gmail.com', 'ad556d63e9333734ab1fd7e76f753269', '0881026433688', NULL, NULL, NULL, NULL, '2024-01-08 03:56:39', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'Vario 125', 1, 'Honda Vario 125 2023 tersedia dalam rentang harga Rp 22,55 - 24,45 Juta di Indonesia. Tersedia dalam 5 pilihan warna dan 3 varian di Indonesia. Vario 125 digerakkan oleh mesin 124.8 cc dengan transmisi Variable Kecepatan. Honda Vario 125 memiliki tinggi jok 769 mm dengan bobot 112 kg. Rem depan menggunakan Disc, sedangkan di belakang Drum. Lebih dari 474 pengguna telah memberikan penilaian untuk Vario 125 berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Honda Vario 125 adalah Beat, Scoopy, Vario 160 dan Attila Venus 125i.', 150, 'Bensin', 2024, 2, 'vario 1.webp', 'vario 2.webp', 'vario 3.webp', 'vario 4.webp', 'vario 5.webp', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2024-01-08 01:54:11', '2024-01-08 03:53:15'),
(7, 'Scoopy', 1, 'Honda Scoopy 2023 tersedia dalam rentang harga Rp 21,98 - 22,78 Juta di Indonesia. Tersedia dalam 8 pilihan warna dan 4 varian di Indonesia. Scoopy digerakkan oleh mesin 109.5 cc dengan transmisi Variable Kecepatan. Honda Scoopy memiliki tinggi jok 746 mm dengan bobot 94 kg. Rem depan menggunakan Disc, sedangkan di belakang Drum. Lebih dari 315 pengguna telah memberikan penilaian untuk Scoopy berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Honda Scoopy adalah Fazzio, Vario 125, Genio dan Attila Venus 125i.', 100, 'Bensin', 2024, 2, 'Scoopy 1.webp', 'Scoopy 2.webp', 'Scoopy 3.webp', 'Scoopy 4.webp', 'Scoopy 1.webp', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2024-01-08 01:58:35', '2024-01-08 03:49:59'),
(8, 'Beat', 1, 'Honda Beat 2023 tersedia dalam rentang harga Rp 18,05 - 18,9 Juta di Indonesia. Tersedia dalam 10 pilihan warna dan 3 varian di Indonesia. Beat digerakkan oleh mesin 110 cc dengan transmisi Variable Kecepatan. Honda Beat memiliki tinggi jok 740 mm dengan bobot 90 kg. Rem depan menggunakan Disc, sedangkan di belakang Drum. Lebih dari 1063 pengguna telah memberikan penilaian untuk Beat berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Honda Beat adalah Beat Street, Vario 125, Gear 125 dan Genio.', 125, 'Bensin', 2024, 2, 'beat 1.webp', 'beat 2.webp', 'beat 3.webp', 'beat 4.webp', 'beat 5.webp', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2024-01-08 02:01:40', '2024-01-08 03:47:01'),
(9, 'Nmax', 2, 'Harga Yamaha Nmax 2023 di Indonesia dimulai dari Rp 31,62 Juta. Tersedia dalam 5 pilihan warna dan 1 varian di Indonesia. Rem depan menggunakan Disc, sedangkan di belakang Disc. Lebih dari 289 pengguna telah memberikan penilaian untuk Nmax berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Yamaha Nmax adalah Satria F150, New Caffenero 150, Racing King 150i dan Electric.', 135, 'Bensin', 2024, 2, '1.webp', '2.webp', '3.webp', '4.webp', '5.webp', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2024-01-08 03:05:26', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
