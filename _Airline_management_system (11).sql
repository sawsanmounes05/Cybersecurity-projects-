-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2024 at 11:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Airport_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aircraft_registration_number` varchar(50) NOT NULL,
  `Flight_ID` varchar(50) NOT NULL,
  `airline_name` varchar(50) DEFAULT NULL,
  `capacity_number` int(11) DEFAULT NULL,
  `airline_food` tinyint(1) DEFAULT NULL,
  `model_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aircraft_registration_number`, `Flight_ID`, `airline_name`, `capacity_number`, `airline_food`, `model_number`) VALUES
('EK-784', 'F-EK459', 'Emirates', 853, 1, 'Airbus A380'),
('EK-A380-07', 'F-EK7B', 'Emirates', 853, 1, 'Airbus A380'),
('EK-A380-09', 'F-EK7A', 'Emirates', 853, 1, 'Airbus A380'),
('EK-A38006', 'F-EK7C', 'Emirates', 853, 1, 'Airbus A380'),
('EK-A38089', 'F-EKA3', 'Emirates', 19, 1, 'Jet-A319'),
('[EK-54678', 'F-EKB456', 'Emirates', 447, 1, 'Boeing 7777'),
('[EK-77789', 'F-EKB112', 'Emirates', 447, 1, 'Boeing 7777'),
('[EK-77834', 'F-EKB7', 'Emirates', 447, 1, 'Boeing 7777');

-- --------------------------------------------------------

--
-- Table structure for table `Airline_Help_Desk`
--

CREATE TABLE `Airline_Help_Desk` (
  `Airline_Help_Desk_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `Assigned_task` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Airline_Help_Desk`
--

INSERT INTO `Airline_Help_Desk` (`Airline_Help_Desk_ID`, `Employee_ID`, `Assigned_task`) VALUES
('HelpDesk1', 'Bro9012', 'Customer Service'),
('HelpDesk2', 'Gar8901', 'Ticketing');

-- --------------------------------------------------------

--
-- Table structure for table `Airport`
--

CREATE TABLE `Airport` (
  `Airport_ID` varchar(50) NOT NULL,
  `Airport_name` varchar(50) DEFAULT NULL,
  `Terminal` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `flight_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Airport`
--

INSERT INTO `Airport` (`Airport_ID`, `Airport_name`, `Terminal`, `city`, `country`, `flight_ID`) VALUES
('DXB', 'Dubai International Airport', 3, 'Dubai', 'UAE', 'F-EK7A'),
('DXB', 'Dubai International Airport', 3, 'Dubai', 'UAE', 'F-EK7B'),
('DXB', 'Dubai International Airport', 3, 'Dubai', 'UAE', 'F-EK7C'),
('JED001', 'King Abdulaziz International Airport', 1, 'Jeddah', 'Saudi Arabia', 'F-EK459'),
('KWI', 'Kuwait International Airport', 1, 'Kuwait City', 'Kuwait', 'F-EKA3'),
('MoroccoAirport', 'Agadir Airport', 1, 'Agadir', 'Morocco', 'F-EKB112'),
('AntalyaAirport', 'Antalya Airport', 3, 'Antalya', 'Turkey', 'F-EKB7'),
('USAirport', 'New York International Airport', 4, 'New York City', 'United States', 'F-EKB891');

-- --------------------------------------------------------

--
-- Table structure for table `Baggage`
--

CREATE TABLE `Baggage` (
  `Baggage_ID` varchar(50) NOT NULL,
  `Flight_ID` varchar(50) NOT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `Quantity` decimal(10,0) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Passenger_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Baggage`
--

INSERT INTO `Baggage` (`Baggage_ID`, `Flight_ID`, `weight`, `Quantity`, `Address`, `Passenger_Name`) VALUES
('EKB239', 'F-EKB112', 32, 2, '123 Avenue Hassan II, Agadir, Morocco', 'Adam Maayni'),
('EKB54', 'F-EK7A', 15, 1, '123 Oxford Street, London', 'Zak MOUNES'),
('EKB55', 'F-EK7B', 18, 1, '456 Baker Street, London', 'Salma MOUNES'),
('EKB56', 'F-EK7C', 22, 1, '789 Regent Street, London', 'Sawsan Mounes'),
('EKB67', 'F-EKB7', 15, 1, '123 Example Street, Istanbul, Turkey', 'Baris Ocalan'),
('EKB671', 'F-EKB891', 25, 1, '123 Main Street, Anytown, NY 12345, USA', 'Maxwell Compton'),
('EKBP1', 'F-EKA3', 50, 3, '25 Rue de Rivoli, 75001 Paris, France', 'Sam Pari'),
('EKBP45', 'F-EK459', 30, 2, '25 Main Street, Dublin, Ireland', 'Ahmed Rana'),
('EKBP46', 'F-EK459', 30, 2, '25 Main Street, Dublin, Ireland', 'Fatima Rana'),
('EKBP47', 'F-EK459', 30, 2, '25 Main Street, Dublin, Ireland', 'Ali Rana'),
('EKBP48', 'F-EK459', 30, 2, '25 Main Street, Dublin, Ireland', 'Aisha Rana'),
('EKBP49', 'F-EK459', 30, 2, '25 Main Street, Dublin, Ireland', 'Yusuf Rana');

-- --------------------------------------------------------

--
-- Table structure for table `Boarding_pass`
--

CREATE TABLE `Boarding_pass` (
  `Boarding_pass_ID` varchar(50) NOT NULL,
  `Flight_ID` varchar(50) NOT NULL,
  `passenger_ID` varchar(50) NOT NULL,
  `Arrival_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gate_number` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `airline_name` varchar(250) DEFAULT NULL,
  `frequent_flyer_num` varchar(50) DEFAULT NULL,
  `Boarding_time` datetime DEFAULT NULL,
  `seat_num` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Boarding_pass`
--

INSERT INTO `Boarding_pass` (`Boarding_pass_ID`, `Flight_ID`, `passenger_ID`, `Arrival_time`, `departure_time`, `Name`, `Gate_number`, `Date`, `airline_name`, `frequent_flyer_num`, `Boarding_time`, `seat_num`) VALUES
('EkBP01', 'F-EK7A', 'EK01', '2024-06-13 07:30:00', '2024-06-13 15:30:00', 'Zak MOUNES', 'Gate 2A', '2024-06-13', 'Emirates', 'EKFF001', '2024-06-13 07:00:00', '1A'),
('EkBP02', 'F-EK7B', 'EK02', '2024-06-14 09:30:00', '2024-06-14 17:30:00', 'Salma MOUNES', 'Gate 2B', '2024-06-14', 'Emirates', 'EKFF002', '2024-06-14 09:00:00', '1B'),
('EkBP03', 'F-EK7C', 'EK03', '2024-06-15 11:30:00', '2024-06-15 19:30:00', 'Sawsan Mounes', 'Gate 2C', '2024-06-15', 'Emirates', 'EKFF003', '2024-06-15 11:00:00', '1C'),
('EKBP12', 'F-EKA3', 'EK702', '2024-06-04 17:00:00', '2024-06-04 13:00:00', 'Sam Pari', 'Emirates Lounge', '2024-06-04', 'Emirates', 'EKFF83', '2024-06-04 12:30:00', 'A3'),
('EKBP45', 'F-EK459', 'EK459', '2024-04-20 10:00:00', '2024-04-20 16:00:00', 'Ahmed Rana', 'Gate C', '2024-04-20', 'Emirates', 'N/A', '2024-04-20 09:00:00', '23A'),
('EkBP4509', 'F-EKB7', 'EK452', '2024-12-01 08:00:00', '2024-12-01 06:00:00', 'Baris Ocalan', 'Gate 4B', '2024-12-01', 'Emirates', 'N/A', '2024-12-01 05:30:00', '7J'),
('EKBP46', 'F-EK459', 'EK460', '2024-04-20 10:00:00', '2024-04-20 16:00:00', 'Fatima Rana', 'Gate C', '2024-04-20', 'Emirates', 'N/A', '2024-04-20 09:00:00', '23B'),
('EKBP47', 'F-EK459', 'EK461', '2024-04-20 10:00:00', '2024-04-20 16:00:00', 'Ali Rana', 'Gate C', '2024-04-20', 'Emirates', 'N/A', '2024-04-20 09:00:00', '23C'),
('EKBP48', 'F-EK459', 'EK462', '2024-04-20 10:00:00', '2024-04-20 16:00:00', 'Aisha Rana', 'Gate C', '2024-04-20', 'Emirates', 'N/A', '2024-04-20 09:00:00', '23D'),
('EKBP49', 'F-EK459', 'EK463', '2024-04-20 10:00:00', '2024-04-20 16:00:00', 'Yusuf Rana', 'Gate C', '2024-04-20', 'Emirates', 'N/A', '2024-04-20 09:00:00', '23E'),
('EkBP72', 'F-EkB891', 'EK781', '2024-03-01 12:00:00', '2024-02-29 12:00:00', 'Maxwell Compton', 'Gate 4A', '2024-02-29', 'Emirates', 'Ek789456', '2024-02-29 11:30:00', '21E'),
('EkBP789', 'F-EKB112', 'EK781', '2024-04-01 12:00:00', '2024-04-01 08:00:00', 'Adam Maayni', 'Gate 5A', '2024-04-01', 'Emirates', 'EKF40986', '2024-04-01 07:30:00', '6A');

-- --------------------------------------------------------

--
-- Table structure for table `cabin_crew`
--

CREATE TABLE `cabin_crew` (
  `cabin_crew_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) DEFAULT NULL,
  `Assigned_task` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabin_crew`
--

INSERT INTO `cabin_crew` (`cabin_crew_ID`, `Employee_ID`, `Assigned_task`) VALUES
('Chloe Hamilton', 'Ham1234', 'Customer host'),
('Indie Rose', 'Ros5678', 'Enforcing safety measures before, during, and after takeoff'),
('Bobby Brown', 'Bro9012', 'Serving food and beverages during flights'),
('Beyonce Santos', 'San3456', 'Customer host'),
('Yuki Tanaka', 'Tan6789', 'Enforcing safety measures before, during, and after takeoff'),
('Aisha Khan', 'Kha2345', 'Serving food and beverages during flights'),
('Javier Garcia', 'Gar8901', 'Customer host'),
('Sofia Silva', 'Sil0123', 'Enforcing safety measures before, during, and after takeoff'),
('Linh Nguyen', 'Ngu4567', 'Serving food and beverages during flights'),
('Mohammed Ali', 'Ali7890', 'Customer host'),
('Elena Vasquez', 'Vas2345', 'Enforcing safety measures before, during, and after takeoff'),
('Surya Patel', 'Pat6789', 'Serving food and beverages during flights'),
('Nadia Abdullah', 'Abd0123', 'Customer host'),
('Keiko Sato', 'Sat4567', 'Enforcing safety measures before, during, and after takeoff'),
('Isabella Moreno', 'Mor1234', 'Serving food and beverages during flights'),
('Ahmed Khan', 'Kha5678', 'Security Checks'),
('Luis Gonzalez', 'Gon9012', 'Gate Operations'),
('Anna Kovac', 'Kov3456', 'Passenger Assistance'),
('Hiroshi Yamamoto', 'Yam6789', 'Lost & Found'),
('Sophie Lefebvre', 'Lef2345', 'Customer Service'),
('Ming Li', 'Li6789', 'Ground Transportation'),
('Priya Mehta', 'Meh0123', 'Ticketing'),
('Ravi Singh', 'Sin4567', 'Aircraft Maintenance'),
('Leila Abadi', 'Aba8901', 'Cleaning & Sanitation'),
('chloe', 'Bri4507', 'Check-in Officer');

-- --------------------------------------------------------

--
-- Table structure for table `Check_in_officer`
--

CREATE TABLE `Check_in_officer` (
  `check_in_officer_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `check_in_zone_position` varchar(250) DEFAULT NULL,
  `Baggage_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Check_in_officer`
--

INSERT INTO `Check_in_officer` (`check_in_officer_ID`, `Employee_ID`, `check_in_zone_position`, `Baggage_ID`) VALUES
('Chloe', 'Bri4507', 'Zone A', 'EKB54'),
('Chloe', 'Bri4507', 'Zone A', 'EKB55'),
('Chloe', 'Bri4507', 'Zone A', 'EKB56'),
('Fred', 'FP006', 'Zone F', 'EKBP45'),
('Fred', 'FP006', 'Zone F', 'EKBP46'),
('Fred', 'FP006', 'Zone F', 'EKBP47'),
('Fred', 'FP006', 'Zone F', 'EKBP48'),
('Fred', 'FP006', 'Zone F', 'EKBP49'),
('Jasmine', 'JW004', 'Zone C', 'EKBP1'),
('Zara', 'ZH005', 'ZONE A', 'EKB671'),
('ZARA', 'ZH005', 'ZONE D', 'EKB67'),
('Jasmine', 'JW004', 'ZONE D', 'EKB671');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `Department_ID` varchar(50) NOT NULL,
  `Location` varchar(250) DEFAULT NULL,
  `department_name` varchar(250) DEFAULT NULL,
  `Employee_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`Department_ID`, `Location`, `department_name`, `Employee_ID`) VALUES
('D025', 'Airport Terminal', 'Check-in Officer', 'Bri4507'),
('D025', 'Airport Terminal', 'Check-in Officer', 'FP006'),
('D025', 'Airport Terminal', 'Check-in Officer', 'JW004'),
('D025', 'Airport Terminal', 'Check-in Officer', 'ZH005'),
('D027', 'In-flight', 'Cabin Crew', 'Abd0123'),
('D027', 'In-flight', 'Cabin Crew', 'Ali7890'),
('D027', 'In-flight', 'Cabin Crew', 'Bro9012'),
('D027', 'In-flight', 'Cabin Crew', 'Gar8901'),
('D027', 'Ground Operations', 'Cabin crew', 'Gon9012'),
('D027', 'In-flight', 'Cabin Crew', 'Ham1234'),
('D027', 'In-flight', 'Cabin Crew', 'Kha2345'),
('D027', 'In-flight', 'Cabin Crew', 'Kha5678'),
('D027', 'Ground Operations', 'Cabin crew', 'Kov3456'),
('D027', 'In-flight', 'Cabin Crew', 'Lef2345'),
('D027', 'Ground Operations', 'Cabin crew', 'Li6789'),
('D027', 'In-flight', 'Cabin Crew', 'Meh0123'),
('D027', 'In-flight', 'Cabin Crew', 'Mor1234'),
('D027', 'In-flight', 'Cabin Crew', 'Ngu4567'),
('D027', 'In-flight', 'Cabin Crew', 'Pat6789'),
('D027', 'In-flight', 'Cabin Crew', 'Ros5678'),
('D027', 'In-flight', 'Cabin Crew', 'San3456'),
('D027', 'In-flight', 'Cabin Crew', 'Sat4567'),
('D027', 'In-flight', 'Cabin Crew', 'Sil0123'),
('D027', 'In-flight', 'Cabin Crew', 'Tan6789'),
('D027', 'In-flight', 'Cabin Crew', 'Vas2345'),
('D027', 'In-flight', 'Cabin Crew', 'Yam6789');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `Employee_ID` varchar(50) NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contact_details` varchar(250) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`Employee_ID`, `Fname`, `Gender`, `salary`, `Currency`, `address`, `contact_details`, `DOB`) VALUES
('Aba8901', 'Leila', 'Female', 52000, 'AED', '258 Pine St', '+971 258-369-2580', '1991-02-07'),
('Abd0123', 'Nadia', 'Female', 49000, 'GBP', '147 Cedar St', '+44 147-258-3690', '1994-07-13'),
('Ali7890', 'Mohammed', 'Male', 51000, 'GBP', '951 Redwood St', '+44 951-741-8529', '2004-05-28'),
('Bri4507', 'Chloe', 'Female', 3000, 'GBP', '12 Green Street, London', '+44 1234 567890', '2002-07-15'),
('Bro9012', 'Bobby', 'Male', 52000, 'AED', '789 Oak St', '+971 789-012-3456', '1998-08-10'),
('FP006', 'Fred', 'Male', 58000, 'GBP', '10 Downing Street, London', '+44 1234567816', '1994-07-20'),
('Gar8901', 'Javier', 'Male', 54000, 'GBP', '159 Birch St', '+44 159-357-2468', '1999-06-18'),
('Gon9012', 'Luis', 'Male', 52000, 'AED', '123 Oak St', '+971 123-456-7890', '1992-11-24'),
('Ham1234', 'Chloe', 'Female', 50000, 'GBP', '123 Main St', '+44 123-456-7890', '2005-02-15'),
('JW004', 'Jasmine', 'Female', 60000, 'USD', '963 Park Avenue, New York', '+1 234567814', '1995-01-01'),
('Kha2345', 'Aisha', 'Female', 49000, 'USD', '987 Cedar St', '+1 987-321-6540', '2002-07-25'),
('Kha5678', 'Ahmed', 'Male', 53000, 'USD', '789 Cedar St', '+1 789-123-4560', '1996-06-17'),
('Kov3456', 'Anna', 'Female', 48000, 'USD', '456 Fir St', '+1 456-789-0123', '1997-02-19'),
('Lef2345', 'Sophie', 'Female', 50000, 'USD', '987 Elm St', '+1 987-321-6540', '1996-08-07'),
('Li6789', 'Ming', 'Male', 51000, 'AED', '753 Maple St', '+971 753-951-7412', '1995-12-31'),
('Meh0123', 'Priya', 'Female', 49000, 'GBP', '951 Hemlock St', '+44 951-741-8529', '1992-04-24'),
('Mor1234', 'Isabella', 'Female', 50000, 'GBP', '456 Maple St', '+44 456-789-1230', '1993-03-21'),
('Ngu4567', 'Linh', 'Female', 52000, 'AED', '753 Spruce St', '+971 753-951-7412', '1997-01-15'),
('Pat6789', 'Surya', 'Male', 53000, 'AED', '369 Hemlock St', '+971 369-258-1470', '1995-02-16'),
('Ros5678', 'Indie', 'Female', 48000, 'USD', '456 Elm St', '+1 456-789-0123', '2000-11-22'),
('San3456', 'Beyonce', 'Female', 53000, 'GBP', '321 Maple St', '+44 321-654-9870', '1997-05-05'),
('Sat4567', 'Keiko', 'Female', 51000, 'USD', '258 Pine St', '+1 258-369-2580', '2001-12-09'),
('Sil0123', 'Sofia', 'Female', 48000, 'USD', '357 Fir St', '+1 357-246-1357', '1998-08-20'),
('Sin4567', 'Ravi', 'Male', 53000, 'USD', '147 Cedar St', '+1 147-258-3690', '1999-09-11'),
('Tan6789', 'Yuki', 'Male', 51000, 'USD', '654 Pine St', '+1 654-987-3210', '2003-10-30'),
('Vas2345', 'Elena', 'Female', 50000, 'USD', '852 Walnut St', '+1 852-963-1478', '1996-10-03'),
('Yam6789', 'Hiroshi', 'Male', 54000, 'GBP', '789 Pine St', '+44 789-012-3456', '1998-05-15'),
('ZH005', 'Zara', 'Female', 59000, 'EUR', '45 Rue de la Paix, Paris', '+33 1234567815', '1993-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `Flight`
--

CREATE TABLE `Flight` (
  `Flight_ID` varchar(50) NOT NULL,
  `airline_name` varchar(50) DEFAULT NULL,
  `aircraft_model` varchar(50) DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `seat_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Flight`
--

INSERT INTO `Flight` (`Flight_ID`, `airline_name`, `aircraft_model`, `arrival_time`, `departure_time`, `seat_ID`) VALUES
('F-EK459', 'Emirates', 'Airbus A380', '2024-04-20 10:00:00', '2024-04-20 16:00:00', '23A'),
('F-EK459_2', 'Emirates', 'Airbus A380', '2024-04-20 10:00:00', '2024-04-20 16:00:00', '23B'),
('F-EK459_3', 'Emirates', 'Airbus A380', '2024-04-20 10:00:00', '2024-04-20 16:00:00', '23C'),
('F-EK459_4', 'Emirates', 'Airbus A380', '2024-04-20 10:00:00', '2024-04-20 16:00:00', '23D'),
('F-EK459_5', 'Emirates', 'Airbus A380', '2024-04-20 10:00:00', '2024-04-20 16:00:00', '23E'),
('F-EK7A', 'Emirates', 'Airbus A380', '2024-06-13 08:00:00', '2024-06-13 16:00:00', '1A'),
('F-EK7B', 'Emirates', 'Airbus A380', '2024-06-14 10:00:00', '2024-06-14 18:00:00', '1B'),
('F-EK7C', 'Emirates', 'Airbus A380', '2024-06-15 12:00:00', '2024-06-15 20:00:00', '1C'),
('F-EKA3', 'Emirates', 'Jet-A319', '2024-06-04 17:00:00', '2024-06-04 13:00:00', 'A3'),
('F-EKB112', 'Emirates', 'Boeing 777', '2024-04-01 12:00:00', '2024-04-01 08:00:00', '6A'),
('F-EKB7', 'Emirates', 'Boeing 777', '2024-12-01 08:00:00', '2024-12-01 06:00:00', '7J'),
('F-EkB891', 'Emirates', 'Boeing 777', '2024-03-01 12:00:00', '2024-02-29 12:00:00', '21E');

-- --------------------------------------------------------

--
-- Table structure for table `Manages`
--

CREATE TABLE `Manages` (
  `Employee_ID` varchar(50) NOT NULL,
  `Department_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Manages`
--

INSERT INTO `Manages` (`Employee_ID`, `Department_ID`) VALUES
('Abd0123', 'D027'),
('Ali7890', 'D027'),
('Bri4507', 'D025'),
('Bro9012', 'D027'),
('FP006', 'D025'),
('Gar8901', 'D027'),
('Gon9012', 'D027'),
('Ham1234', 'D027'),
('JW004', 'D025'),
('Kha2345', 'D027'),
('Kha5678', 'D027'),
('Kov3456', 'D027'),
('Lef2345', 'D027'),
('Li6789', 'D027'),
('Meh0123', 'D027'),
('Mor1234', 'D027'),
('Ngu4567', 'D027'),
('Pat6789', 'D027'),
('Ros5678', 'D027'),
('San3456', 'D027'),
('Sat4567', 'D027'),
('Sil0123', 'D027'),
('Tan6789', 'D027'),
('Vas2345', 'D027'),
('Yam6789', 'D027'),
('ZH005', 'D025');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_ID` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `passport_num` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_ID`, `DOB`, `Nationality`, `passport_num`, `Name`) VALUES
('EK01', '1999-03-15', 'British', 'ZAK990315', 'Zak MOUNES'),
('EK02', '2000-10-05', 'British', 'SAL001005', 'Salma MOUNES'),
('EK03', '2005-08-13', 'British', 'SAW050813', 'Sawsan Mounes'),
('EK452', '1958-08-25', 'Turkish', 'Ocl38671', 'Baris Ocalan'),
('EK459', '2019-01-01', 'Irish', 'AHM123456', 'Ahmed Rana'),
('EK460', '2017-05-05', 'Irish', 'FAT234567', 'Fatima Rana'),
('EK461', '2005-03-15', 'Irish', 'ALIR345678', 'Ali Rana'),
('EK462', '1995-08-20', 'Irish', 'AIS456789', 'Aisha Rana'),
('EK463', '1990-12-10', 'Irish', 'YUS567890', 'Yusuf Rana'),
('EK702', '2003-04-06', 'France', 'PAR5674', 'Sam Pari'),
('EK781', '2001-08-07', 'American', 'Com786312', 'Maxwell Compton'),
('EK801', '1958-09-21', 'Morrocan', 'Maa48563', 'Adam Maayni');

-- --------------------------------------------------------

--
-- Table structure for table `Seat`
--

CREATE TABLE `Seat` (
  `seat_ID` varchar(50) NOT NULL,
  `business_class` tinyint(1) DEFAULT NULL,
  `Seat` varchar(50) NOT NULL,
  `economy` tinyint(1) DEFAULT NULL,
  `first_class` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Seat`
--

INSERT INTO `Seat` (`seat_ID`, `business_class`, `Seat`, `economy`, `first_class`) VALUES
('1A', 1, 'Business Class', 0, 0),
('1B', 1, 'Business Class', 0, 0),
('1C', 1, 'Business Class', 0, 0),
('21E', 0, 'economy', 1, 0),
('23A', 0, 'Economy Class', 1, 0),
('23B', 0, 'Economy Class', 1, 0),
('23C', 0, 'Economy Class', 1, 0),
('23D', 0, 'Economy Class', 1, 0),
('23E', 0, 'Economy Class', 1, 0),
('6A', 0, 'First class', 0, 1),
('7J', 0, 'First class', 0, 1),
('A3', 0, 'First class', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aircraft_registration_number`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Indexes for table `Airline_Help_Desk`
--
ALTER TABLE `Airline_Help_Desk`
  ADD PRIMARY KEY (`Airline_Help_Desk_ID`),
  ADD KEY `airlinehelpdesk_employee_fk` (`Employee_ID`);

--
-- Indexes for table `Airport`
--
ALTER TABLE `Airport`
  ADD KEY `airport_flight_fk` (`flight_ID`);

--
-- Indexes for table `Baggage`
--
ALTER TABLE `Baggage`
  ADD PRIMARY KEY (`Baggage_ID`),
  ADD KEY `baggage_flight_fk` (`Flight_ID`);

--
-- Indexes for table `Boarding_pass`
--
ALTER TABLE `Boarding_pass`
  ADD PRIMARY KEY (`Boarding_pass_ID`),
  ADD KEY `boardingpass_flight_fk` (`Flight_ID`),
  ADD KEY `boardingpass_passenger_fk` (`passenger_ID`);

--
-- Indexes for table `cabin_crew`
--
ALTER TABLE `cabin_crew`
  ADD KEY `cabincrew_employee_fk` (`Employee_ID`);

--
-- Indexes for table `Check_in_officer`
--
ALTER TABLE `Check_in_officer`
  ADD KEY `checkinofficer_employee_fk` (`Employee_ID`),
  ADD KEY `checkinofficer_baggage_fk` (`Baggage_ID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD UNIQUE KEY `Department_ID_2` (`Department_ID`,`Employee_ID`) USING BTREE,
  ADD KEY `department_employee_fk` (`Employee_ID`),
  ADD KEY `Department_ID` (`Department_ID`) USING BTREE;

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `Flight`
--
ALTER TABLE `Flight`
  ADD UNIQUE KEY `Flight_ID` (`Flight_ID`) USING BTREE,
  ADD KEY `flight_seat_fk` (`seat_ID`);

--
-- Indexes for table `Manages`
--
ALTER TABLE `Manages`
  ADD PRIMARY KEY (`Employee_ID`,`Department_ID`),
  ADD KEY `manages_department_fk` (`Department_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_ID`);

--
-- Indexes for table `Seat`
--
ALTER TABLE `Seat`
  ADD UNIQUE KEY `seat_ID` (`seat_ID`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Airline_Help_Desk`
--
ALTER TABLE `Airline_Help_Desk`
  ADD CONSTRAINT `airlinehelpdesk_employee_fk` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`);

--
-- Constraints for table `Airport`
--
ALTER TABLE `Airport`
  ADD CONSTRAINT `airport_flight_fk` FOREIGN KEY (`flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `Baggage`
--
ALTER TABLE `Baggage`
  ADD CONSTRAINT `baggage_flight_fk` FOREIGN KEY (`Flight_ID`) REFERENCES `Flight` (`Flight_ID`);

--
-- Constraints for table `Boarding_pass`
--
ALTER TABLE `Boarding_pass`
  ADD CONSTRAINT `boardingpass_flight_fk` FOREIGN KEY (`Flight_ID`) REFERENCES `Flight` (`Flight_ID`),
  ADD CONSTRAINT `boardingpass_passenger_fk` FOREIGN KEY (`passenger_ID`) REFERENCES `Passenger` (`passenger_ID`);

--
-- Constraints for table `cabin_crew`
--
ALTER TABLE `cabin_crew`
  ADD CONSTRAINT `cabincrew_employee_fk` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`);

--
-- Constraints for table `Check_in_officer`
--
ALTER TABLE `Check_in_officer`
  ADD CONSTRAINT `checkinofficer_baggage_fk` FOREIGN KEY (`Baggage_ID`) REFERENCES `Baggage` (`Baggage_ID`),
  ADD CONSTRAINT `checkinofficer_employee_fk` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`);

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `department_employee_fk` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`);

--
-- Constraints for table `Flight`
--
ALTER TABLE `Flight`
  ADD CONSTRAINT `flight_seat_fk` FOREIGN KEY (`seat_ID`) REFERENCES `seat` (`seat_ID`);

--
-- Constraints for table `Manages`
--
ALTER TABLE `Manages`
  ADD CONSTRAINT `manages_department_fk` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`),
  ADD CONSTRAINT `manages_employee_fk` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
