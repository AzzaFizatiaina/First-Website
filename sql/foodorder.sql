-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2021 at 07:48 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('sim', 'iman@gmail.com', '0125737468', 'no', 'yes'),
('sim', 'simm@gmail.com', '21233444', 'sas', 'sdad');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('imannn', 'iman', 'iman@gmail.com', '01234537845', 'pahang', '12345'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `F_ID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE',
  PRIMARY KEY (`F_ID`,`R_ID`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Dumbells ', 40, 'Come in pair.\r\n5kgs each', 1, 'imgs/dumbells.jpg', 'ENABLE'),
(59, 'Fitness Plan', 10, '4 weeks Cardio and Strength Challenge.', 2, 'imgs/fitnessPlan.jpg', 'ENABLE'),
(60, 'Skipping Rope', 20, 'The skipping ropes consist of a PVC cord optimized for scuff resistance, speed, and flexibility.', 3, 'imgs/skippingRope.jpg', 'ENABLE'),
(61, 'Pullup Bar', 70, '-Perfect for Indoor and Outdoor Use.\r\n-Foam pads provide a secure and comfortable grip.', 1, 'imgs/pullupBar.jpg', 'ENABLE'),
(62, 'Whey Protein', 65, 'For muscles building.', 2, 'imgs/supplementA.jpg', 'ENABLE'),
(63, 'Vitamins D', 30, 'NOW Vitamin D-3 softgels supply this key vitamin in a highly-absorbable liquid softgel form.', 3, 'imgs/supplementB.jpg', 'ENABLE'),
(65, 'Treadmill', 150, 'General function : Heart rate on handgrip,Ipad holder,water holder,with 12 programs:P1-P12', 4, 'imgs/treadmill.jpg', 'DISABLE'),
(66, 'Tea', 20, '', 4, 'imgs/jasminetea.jpg', 'DISABLE'),
(68, 'Workout Plan', 15, 'Daily workout routines.', 6, 'imgs/workoutPlan.jpg', 'DISABLE'),
(69, 'Yoga Matt', 50, 'With double sided non-slip surfaces, All-Purpose Premium exercise yoga mat comes with an excellent slip resistant advantage to prevent injuries. ', 2, 'imgs/yogamat.jpg', 'ENABLE'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'imgs/jasminetea.jpg', 'ENABLE'),
(71, 'Black Coffee', 40, 'Relaxation', 2, 'imgs/blackcoffee.jpg', 'ENABLE'),
(72, 'Knee Support', 15, ' Premium quality with Ultralight, Portable, Easy to carry, Compact size, reduces storage space, encourage for on-the-go usage', 2, 'imgs/kneesupport.jpg', 'ENABLE'),
(73, 'Exercise Bike', 90, 'Exercises as short as 30 to 40 minutes can shape your body.\r\nThe sturdy structure ensures your safety when exercising.', 2, 'imgs/bike.jpg', 'ENABLE'),
(74, 'Melatonin', 100, 'Melatonin is a potent free radical scavenger naturally produced in the pineal gland and present in high amounts in the gastrointestinal tract. ', 2, 'imgs/melatonin.jpg', 'DISABLE'),
(75, 'Lecithin', 60, 'Contains Phosphatidyl Choline, which comprises a major portion of our brain and nervous system and has naturally occurring essential fatty acids and Inositol.', 2, 'imgs/lecithin.jpg', 'DISABLE'),
(76, 'Meal Plan', 35, 'Complete meal plan.', 2, 'imgs/mealplan.jpg', 'DISABLE'),
(77, 'Home Workout', 20, '8 Weeks of Home workouts.', 2, 'imgs/homeworkout.jpg', 'ENABLE'),
(78, 'Fitness Watch', 100, 'Able to track your fitness progess.', 2, 'imgs/watch.jpg', 'ENABLE'),
(79, 'Keto Meal Plan', 35, 'Complete guide for keto plan.', 2, 'imgs/ketoplan.png', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan'),
('simm', 'sim', 'simm@gmail.com', '0193579267', 'sel', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_ID` int(30) NOT NULL AUTO_INCREMENT,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `F_ID` (`F_ID`),
  KEY `username` (`username`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-03', 'ckumar', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(4, 65, 'Coffee', 25, 4, '2019-03-03', 'ckumar', 4),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(6, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(8, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-03', 'ckumar', 3),
(10, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'ckumar', 2),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-05', 'ckumar', 3),
(12, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(13, 59, 'Meurig Fish', 60, 4, '2019-03-05', 'ckumar', 2),
(14, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'ckumar', 1),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-05', 'ckumar', 3),
(16, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2019-03-05', 'ckumar', 4),
(18, 59, 'Meurig Fish', 60, 5, '2019-03-05', 'birju', 2),
(19, 63, 'Baahubali Thali', 75, 1, '2019-03-05', 'birju', 3),
(20, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(21, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(22, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(23, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(24, 65, 'Coffee', 25, 1, '2019-03-05', 'birju', 4),
(25, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2),
(69, 59, 'Meurig Fish', 60, 1, '2021-01-24', 'imannn', 2),
(70, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2021-01-24', 'imannn', 3),
(71, 59, 'Meurig Fish', 60, 2, '2021-01-24', 'imannn', 2),
(72, 59, 'Meurig Fish', 60, 2, '2021-01-24', 'imannn', 2),
(73, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2021-01-24', 'imannn', 3),
(74, 79, 'Pakora', 45, 1, '2021-01-24', 'imannn', 2),
(75, 63, 'Baahubali Thali', 75, 1, '2021-01-25', 'imannn', 3),
(76, 59, 'Meurig Fish', 60, 1, '2021-01-25', 'imannn', 2),
(77, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2021-01-25', 'imannn', 3),
(78, 63, 'Baahubali Thali', 75, 1, '2021-01-25', 'imannn', 3),
(79, 59, 'Meurig Fish', 60, 1, '2021-01-25', 'imannn', 2),
(80, 63, 'Baahubali Thali', 75, 1, '2021-01-25', 'imannn', 3),
(81, 72, 'Paneer Pakora', 45, 1, '2021-01-25', 'imannn', 2),
(82, 59, 'Fitness Plan', 10, 1, '2021-01-25', 'imannn', 2),
(83, 59, 'Fitness Plan', 10, 1, '2021-01-25', 'imannn', 2),
(84, 59, 'Fitness Plan', 10, 1, '2021-01-25', 'imannn', 2),
(85, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(86, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(87, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(88, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(89, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(90, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(91, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(92, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(93, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(94, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(95, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(96, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2),
(97, 59, 'Fitness Plan', 10, 1, '2021-01-26', 'imannn', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `R_ID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`R_ID`),
  UNIQUE KEY `M_ID_2` (`M_ID`),
  KEY `M_ID` (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(7, 'Adidis', 'adidis@example.com', '03245678', 'sela', 'simm');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
