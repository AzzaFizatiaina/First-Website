-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2021 at 07:49 AM
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
-- Database: `phpreviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'David Deacon', 'I use this website daily, the amount of content is brilliant.', 5, '2020-01-09 20:43:02'),
(2, 1, 'John Doe', 'Great website, great content, and great support!', 4, '2020-01-09 21:00:41'),
(3, 1, 'Robert Billings', 'Website needs more content, good website but content is lacking.', 3, '2020-01-09 21:10:16'),
(4, 1, 'Daniel Callaghan', 'Great!', 5, '2020-01-09 23:51:05'),
(7, 1, 'Johannes Hansen', 'Really like this website, helps me out a lot!', 5, '2020-01-16 17:35:12'),
(9, 1, 'Óli Þórðarson', 'Thanks', 5, '2020-01-16 17:36:34'),
(11, 1, 'Naomi Holt', 'Appreciate the amount of content you guys do.', 5, '2020-01-16 17:39:17'),
(12, 1, 'Isobel Whitehead', 'Thank you for providing a website that helps us out a lot!', 5, '2020-01-16 17:40:28'),
(13, 1, 'Warren Mills', 'Everything is awesome!', 5, '2020-01-16 19:34:08'),
(15, 1, 'melinda', 'good,keep it up', 3, '2021-01-24 22:20:08'),
(17, 1, 'azza', 'yesh.... this is what i want\r\n', 4, '2021-01-25 22:12:48'),
(18, 1, 'hamim', 'yayyyy, yahooo', 4, '2021-01-26 15:46:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
