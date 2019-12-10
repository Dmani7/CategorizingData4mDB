-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 11, 2019 at 12:46 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `FastReaction_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Appointments`
--

CREATE TABLE `tbl_Appointments` (
  `AppointmentID` int(10) NOT NULL,
  `ServiceProviderID` int(10) NOT NULL,
  `PracticeID` int(10) NOT NULL,
  `ClientName` varchar(500) NOT NULL,
  `ClientEmail` varchar(100) NOT NULL,
  `ClientTel` int(15) NOT NULL,
  `Message` mediumtext,
  `AppointmentDate` varchar(30) NOT NULL,
  `From_tym` varchar(50) NOT NULL,
  `To_tym` varchar(50) NOT NULL,
  `ApprovalStatus` varchar(50) NOT NULL DEFAULT 'Pending',
  `Comment` text,
  `ApprovalDate` timestamp NULL DEFAULT NULL,
  `AddedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_Appointments`
--

INSERT INTO `tbl_Appointments` (`AppointmentID`, `ServiceProviderID`, `PracticeID`, `ClientName`, `ClientEmail`, `ClientTel`, `Message`, `AppointmentDate`, `From_tym`, `To_tym`, `ApprovalStatus`, `Comment`, `ApprovalDate`, `AddedDate`) VALUES
(1, 58, 114, 'Kabali Enock', 'kabali@gmail.com', 5678, NULL, '31/10/2019', '10:00', '10:30', 'Pending', NULL, NULL, '2019-12-02 10:28:27'),
(2, 58, 109, 'Wamani Derrick', 'mani@gmail.com', 6534, '', '2019-12-04', '08:30', '09:00', 'Pending', NULL, NULL, '2019-12-02 10:34:41'),
(3, 58, 104, 'Kyagulanyi Bobi', 'bobi@gmail.com', 12346, '', '2019-12-03', '17:15', '17:30', 'Pending', NULL, NULL, '2019-12-05 09:56:22'),
(4, 58, 109, 'Liz Achalia', 'mani@gmail.com', 5678, '', '2019-12-11', '11:30', '12:00', 'Pending', NULL, NULL, '2019-12-09 10:24:10'),
(5, 58, 104, 'Kaahwa Henry', 'kaggo@gmail.com', 43343, '', '2019-12-10', '08:15', '08:30', 'Pending', NULL, NULL, '2019-12-09 12:09:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_Appointments`
--
ALTER TABLE `tbl_Appointments`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `ServiceProviderID` (`ServiceProviderID`),
  ADD KEY `PracticeID` (`PracticeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_Appointments`
--
ALTER TABLE `tbl_Appointments`
  MODIFY `AppointmentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_Appointments`
--
ALTER TABLE `tbl_Appointments`
  ADD CONSTRAINT `tbl_appointments_ibfk_1` FOREIGN KEY (`ServiceProviderID`) REFERENCES `ServiceProviderTB` (`ServiceProviderID`),
  ADD CONSTRAINT `tbl_appointments_ibfk_2` FOREIGN KEY (`PracticeID`) REFERENCES `PracticesTB` (`PracticesID`);
