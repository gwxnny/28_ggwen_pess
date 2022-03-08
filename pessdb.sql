-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 08:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_disptached` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_disptached`, `time_arrived`, `time_completed`) VALUES
(1, 'QX1123A', '2022-02-10 04:15:42', '2022-02-10 04:42:42', '2022-02-24 13:05:52'),
(2, 'QX2232B', '2022-02-10 04:15:42', '2022-02-10 04:15:42', '2022-02-24 13:08:10'),
(11, 'QX1111A', '2022-02-10 04:15:42', '2022-02-10 04:15:42', NULL),
(12, 'QX3334E', '2022-02-10 04:26:35', '2022-02-10 15:26:43', NULL),
(13, 'QX1123A', '2022-02-15 23:15:16', NULL, '2022-02-24 13:05:52'),
(13, 'QX2333A', '2022-02-10 04:26:35', '2022-02-10 14:26:43', '2022-02-24 13:10:26'),
(14, 'QX5521W', '2022-02-10 04:26:35', '2022-02-10 16:26:43', NULL),
(21, 'QX2232B', '2022-02-15 23:20:05', '2022-02-24 13:07:40', '2022-02-24 13:08:10'),
(22, 'QX2333A', '2022-02-15 23:22:22', '2022-02-24 13:09:51', '2022-02-24 13:10:26'),
(23, 'QX1123A', '2022-02-24 13:12:50', NULL, NULL),
(24, 'QX2232B', '2022-03-01 13:52:49', NULL, NULL),
(25, 'QX9999E', '2022-03-02 11:38:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(1, 'David', '81234567', '060', 'Outside ITE CW', 'Car clashed with van', '3', '2022-02-07 20:42:35'),
(2, 'Iverson', '91234567', '020', 'Jurong', 'Testing', '3', '2022-02-08 13:50:00'),
(11, 'bob', '1231', '010', 'Jurong', 'Fire outside of ITE CW entrance', '1', '2022-02-10 04:10:54'),
(12, 'john', '1234', '030', 'West Mall', 'Burglary inside West Mall', '1', '2022-02-11 11:12:50'),
(13, 'Jason', '1237', '060', 'Jurong West St 42', 'Car clashed at Jurong Wst St 42', '3', '2022-02-12 11:12:50'),
(14, 'Tim', '1239', '020', 'Geylang', 'Riot outbreak around Geylang', '1', '2022-02-10 04:24:31'),
(15, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '1', '2022-02-15 14:08:12'),
(16, 'david', '18686433', '010', 'Jurong', 'Fire at Jurong', '1', '2022-02-15 14:41:58'),
(17, 'James', '45798654', '010', 'PIE', 'Fire at PIE', '1', '2022-02-15 14:47:21'),
(18, 'david', '18686433', '010', 'Hougang', 'Fire at Hougang', '1', '2022-02-15 22:58:16'),
(19, 'david', '18686433', '010', 'Hougang', 'Fire at Hougang', '2', '2022-02-15 23:00:05'),
(20, 'Glenn', '68354723', '050', 'Yew Tee', 'Fallen Tree at Yew Tee', '2', '2022-02-15 23:11:30'),
(21, 'Thomas', '43563456', '070', 'Tampines', 'Painting Outside House', '2', '2022-02-15 23:20:05'),
(22, 'Fanny', '81234567', '080', 'Pasir Ris', 'Flooding', '2', '2022-02-15 23:22:22'),
(23, 'david', '123', '050', 'Yew Tee', 'Fallen Tree at Yew Tee', '2', '2022-02-24 13:12:50'),
(24, 'david', '18686433', '020', 'Hougang', 'Riot at Hougang', '2', '2022-03-01 13:52:49'),
(25, 'Glenn', '45798654', '030', 'Jurong', 'Burglary at Jurong', '2', '2022-03-02 11:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1123A', '1'),
('QX2232B', '1'),
('QX9999E', '1'),
('QX2333A', '3'),
('QX3334E', '3'),
('QX5521W', '3'),
('QX5555T', '3'),
('QX7774H', '3'),
('QX8885Z', '3'),
('QX1111A', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_type_id_2` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_desc` (`patrolcar_status_desc`),
  ADD KEY `patrolcar_status_desc_2` (`patrolcar_status_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
