-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2019 at 12:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_book`
--

CREATE TABLE `t_book` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `author` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_book`
--

INSERT INTO `t_book` (`id`, `title`, `author`, `status`) VALUES
(1, 'Madilog', 'Tan Malaka', '1'),
(2, 'Kebangsaan dan Kerakyatan', 'Bung Hatta', '1'),
(3, 'Dunia Sophie', 'Jostein Gaarder', '1'),
(4, 'Murder On The Orient Express', 'Agatha Christie', '1'),
(5, 'Decisive moments : Indonesia\'s long road to democracy', 'B.J. Habibie', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_rent`
--

CREATE TABLE `t_rent` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_rent`
--

INSERT INTO `t_rent` (`id`, `email`, `book_id`, `book_title`, `status`) VALUES
(1, 'atikah.efnd@gmail.com', 3, 'Dunia Sophie', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_book`
--
ALTER TABLE `t_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_rent`
--
ALTER TABLE `t_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_book`
--
ALTER TABLE `t_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_rent`
--
ALTER TABLE `t_rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_rent`
--
ALTER TABLE `t_rent`
  ADD CONSTRAINT `t_rent_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `t_book` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
