                         
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 12:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(100) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `schedule` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `credits`, `schedule`) VALUES
(1, 'Introduction to Programming', 3, 'Mon-Wed 9:00-10:30'),
(2, 'Data Structures', 4, 'Tue-Thu 11:00-12:30'),
(3, 'Circuits and Systems', 3, 'Mon-Wed 2:00-3:30'),
(4, 'Thermodynamics', 3, 'Tue-Thu 9:00-10:30'),
(5, 'Algorithms', 4, 'Fri 10:00-1:00'),
(6, 'Linear Algebra', 3, 'Mon-Wed 10:00-11:30'),
(7, 'Database Management Systems', 4, 'Tue-Thu 2:00-3:30'),
(8, 'Operating Systems', 4, 'Mon-Wed 1:00-2:30'),
(9, 'Software Engineering', 3, 'Tue-Thu 12:30-2:00'),
(10, 'Discrete Mathematics', 3, 'Mon-Wed 3:30-5:00'),
(11, 'Computer Networks', 3, 'Fri 2:00-5:00'),
(12, 'Machine Learning', 4, 'Mon-Wed 9:00-11:00'),
(13, 'Artificial Intelligence', 4, 'Tue-Thu 10:00-12:00'),
(14, 'Computer Graphics', 3, 'Mon-Wed 12:30-2:00'),
(15, 'Embedded Systems', 3, 'Fri 1:00-4:00'),
(16, 'bio', 2, '2024-12-03 20:57:51.615865'),
(17, '', 0, '2024-12-03 23:27:38.907385'),
(18, 'chemistry', 1, '2024-12-12 23:40:38 ');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollmentID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollmentID`, `studentID`, `courseID`, `semester`, `grade`) VALUES
(1, 1, 1, 'Semester 1', 'A'),
(2, 2, 2, 'Semester 2', 'B+'),
(3, 3, 3, 'Semester 3', 'B'),
(4, 4, 4, 'Semester 4', 'NULL'),
(5, 1, 1, 'Sem 5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `date_of_appointment` date DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyID`, `userID`, `date_of_appointment`, `department`) VALUES
(1, 2, '2018-03-15', 'Computer Science'),
(2, 5, '2019-09-01', 'Mathematics'),
(3, 6, '2020-01-15', 'Physics'),
(4, 7, '2021-02-01', 'Biology'),
(5, 9, '2020-05-20', 'Chemistry'),
(6, 10, '2017-06-25', 'Engineering'),
(7, 11, '2022-08-10', 'Mathematics'),
(8, 13, '2019-03-12', 'Computer Science'),
(9, 19, '2020-07-23', 'History'),
(10, 20, '2018-11-01', 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `picture` longblob DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `enrollmentDate` date DEFAULT NULL,
  `AmountPaid` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `userID`, `dob`, `picture`, `major`, `enrollmentDate`, `AmountPaid`) VALUES
(1, 3, '2000-04-15', NULL, 'Computer Science', '2020-08-20', NULL),
(2, 8, '1998-06-23', 0x706174682f746f2f70696374757265322e6a7067, 'Mathematics', '2023-09-01', NULL),
(3, 12, '2000-01-15', 0x706174682f746f2f70696374757265332e6a7067, 'Engineering', '2024-02-01', NULL),
(4, 15, '1999-08-07', 0x706174682f746f2f70696374757265342e6a7067, 'Biology', '2023-11-15', NULL),
(5, 17, '2001-05-30', 0x706174682f746f2f70696374757265352e6a7067, 'Physics', '2024-03-01', NULL),
(6, 18, '2000-10-12', 0x706174682f746f2f70696374757265362e6a7067, 'Chemistry', '2024-02-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `firstName`, `lastName`, `email`, `password`, `role`) VALUES
(2, 'Del', 'Corner', 'del.corner@gmail.com', 'password456', 'faculty'),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', 'password789', 'student'),
(4, 'Robert', 'Brown', 'robert.brown@example.com', 'password321', 'admin'),
(5, 'Michael', 'Davis', 'michael.davis@example.com', 'password654', 'faculty'),
(6, 'John', 'Williams', 'john.williams@example.com', 'password654', 'faculty'),
(7, 'Sarah', 'Wilson', 'sarah.wilson@example.com', 'password123', 'faculty'),
(8, 'James', 'Taylor', 'james.taylor@example.com', 'password789', 'student'),
(9, 'Alice', 'Brown', 'alice.brown@example.com', 'password456', 'faculty'),
(10, 'Daniel', 'Davis', 'daniel.davis@example.com', 'password123', 'faculty'),
(11, 'Rachel', 'Martinez', 'rachel.martinez@example.com', 'password321', 'faculty'),
(12, 'Matthew', 'Garcia', 'matthew.garcia@example.com', 'password654', 'student'),
(13, 'David', 'Moore', 'david.moore@example.com', 'password789', 'faculty'),
(14, 'Olivia', 'Hernandez', 'olivia.hernandez@example.com', 'password321', 'admin'),
(15, 'Sophia', 'Miller', 'sophia.miller@example.com', 'password987', 'student'),
(16, 'Anna', 'Taylor', 'anna.taylor@example.com', 'password321', 'faculty'),
(17, 'Henry', 'Wilson', 'henry.wilson@example.com', 'password456', 'student'),
(18, 'Gabriel', 'Martinez', 'gabriel.martinez@example.com', 'password654', 'student'),
(19, 'Peter', 'Johnson', 'peter.johnson@example.com', 'password987', 'faculty'),
(20, 'Isabella', 'Moore', 'isabella.moore@example.com', 'password321', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollmentID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
