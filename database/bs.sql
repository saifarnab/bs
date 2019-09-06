-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 12:57 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bs`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_store`
--

CREATE TABLE `book_store` (
  `id` int(6) UNSIGNED NOT NULL,
  `owner` char(9) DEFAULT NULL,
  `title` varchar(244) DEFAULT NULL,
  `aurthor` varchar(255) DEFAULT NULL,
  `status` varchar(28) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_store`
--

INSERT INTO `book_store` (`id`, `owner`, `title`, `aurthor`, `status`, `price`) VALUES
(10, '011132011', 'Bangla', 'A.H Rasel', 'For Sell', 150),
(13, '011132013', 'The Soul of a New Machine', 'Tracy Kidder', 'For Sell', 450),
(14, '011132013', 'Superintelligence: Paths, Dangers, Strategies', 'Nick Bostrom', 'For Sell', 700),
(15, '011132013', 'Hackers: Heroes of the Computer Revolution', 'Steven Levy', 'For Sell', 150),
(16, '011132013', 'Thinking in Systems: A Primer', 'Donella H. Meadows', 'For Exchange', 0),
(17, '011132013', 'Pride and Prejudice', 'Jane Austen', 'Free', 0),
(18, '011132013', 'Grammar of Politics', 'Harold T.Laski', 'For Sell', 200),
(19, '011132013', 'End and Means', 'Huxlay', 'For Sell', 500),
(20, '011132013', 'Madhushala', 'Harivansh Rai Bachchan', 'For Sell', 350),
(21, '011132013', 'The Clown', 'Heinrich Boll', 'For Exchange', 0),
(22, '011132011', 'The Art of Electronics (Hardcover) ', ' Paul Horowitz', 'For Sell', 100),
(23, '011132011', 'Microelectronic Circuits', 'Adel S. Sedra', 'For Sell', 120),
(24, '011132011', 'Linear Systems and Signals ', 'Lathi', 'For Sell', 200),
(25, '011132011', 'Fundamentals of Electric Circuits', 'Charles K. Alexander  ', 'For Exchange', 0),
(26, '011132011', 'ABC of Electrical Engineering', 'B.L. Theraja', 'For Sell', 80),
(29, '011151176', 'Introduction to Algorithms', 'Thomas Cormen', 'For Exchange', 0),
(30, '011151176', 'Operating Systems Concepts', 'Silberschatz and Galvin', 'For Sell', 220),
(32, '011151176', 'Database Design for Mere Mortals', 'Michael Hernandez', 'For Exchange', 0),
(33, '011151176', 'An Introduction to Mathematical Cryptography ', 'Jeffrey Hoffstein', 'For Sell', 500),
(34, '011151176', 'Plays and poetry', 'William Shakespeare', 'For Sell', 500),
(36, '011133095', 'What do Entrepreneurs Create?', 'Hinrich Voss', 'For Sell', 400),
(37, '011133095', 'Gender, Science and Innovation', 'Alexandra Poulovassilis', 'For Exchange', 0),
(38, '011133095', 'Entrepreneurial Intention', 'Evan J. Douglas', 'For Sell', 250),
(39, '011133095', 'International Management', 'Sarah Stanwick', 'For Sell', 440),
(40, '011133095', 'Transnational Business Governance Interactions', 'Burkard Eberlein', 'For Exchange', 0),
(41, '011133095', 'Organizing Hope', 'Monika Kostera', 'For Sell', 170),
(42, '011133095', ' High-growth Womenâ€™s Entrepreneurship', 'Linda F. Edelman', 'For Sell', 200),
(43, '011133095', 'Big Data', 'Adrian Wilkinson', 'Free', 0),
(44, '011132013', 'Computer ekle', 'dasasd', 'Only Me', 5000),
(101, '011151176', 'Bangla History', 'A.H Rasel', 'For Sell', 100),
(102, '011151176', 'Big Data', 'Adrian Wilkinson', 'Free', 544);

-- --------------------------------------------------------

--
-- Table structure for table `buddy`
--

CREATE TABLE `buddy` (
  `id` varchar(19) DEFAULT NULL,
  `buddy_id` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buddy`
--

INSERT INTO `buddy` (`id`, `buddy_id`) VALUES
('011132013', '011151176'),
('011151176', '011132013'),
('011151176', '011132011'),
('011132011', '011151176'),
('011151176', '011133095'),
('011133095', '011151176');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(6) UNSIGNED NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `buddy_id` varchar(30) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `buddy_id`, `time_date`, `comment`) VALUES
(2, '011151176', '011132013', '2019-08-26 21:33:22', 'fdsfdsf'),
(3, '011151176', '011132013', '2019-08-26 22:27:03', 'ok done'),
(4, '011132013', '011151176', '2019-08-26 22:32:24', 'hi'),
(5, '011151176', '011132013', '2019-08-26 22:34:14', 'you wanna buy this book ?'),
(6, '011151176', '011132013', '2019-08-26 22:34:28', 'reply if u want '),
(7, '011132013', '011151176', '2019-08-26 22:34:52', 'hi, sorry for being late'),
(8, '011132013', '011151176', '2019-08-26 22:35:08', 'yes i want to buy this book'),
(9, '011132013', '011151176', '2019-08-26 22:35:24', 'but my offerings is 150 taka'),
(10, '011151176', '011132011', '2019-08-26 22:53:25', 'hello, r u there');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(6) UNSIGNED NOT NULL,
  `user_id` char(9) NOT NULL,
  `subject` text NOT NULL,
  `message` text,
  `rdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `subject`, `message`, `rdate`) VALUES
(2, '011151176', 'server down', 'plz solve this issue', '2019-08-26 22:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` char(9) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(78) DEFAULT NULL,
  `pass` varchar(79) DEFAULT NULL,
  `bio` text,
  `dept` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `firstname`, `lastname`, `email`, `phone`, `pass`, `bio`, `dept`) VALUES
('011132011', 'Khaled', 'Mahbub', 'khaled@gmail.com', '01611258974', '1234', 'Welcome to my profile.', 'EEE'),
('011132013', 'Saifullah', 'Mahbub', 'saifornab@gmail.com', '01610966631', '1234', 'Carefully Careless', 'CSE'),
('011133095', 'Sabbir', 'Ahmed', 'djsabbir99@gmail.com', '01940966631', '1234', 'Welcome to my profile', 'BBA'),
('011151176', 'Zannatul', 'Ferdous', 'shayree@hotmail.com', '01965747210', '1234', 'Hey You, Welcome', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `track_sale_history`
--

CREATE TABLE `track_sale_history` (
  `saler_id` int(6) DEFAULT NULL,
  `buyer_id` int(6) DEFAULT NULL,
  `sale_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_store`
--
ALTER TABLE `book_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_store`
--
ALTER TABLE `book_store`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_store`
--
ALTER TABLE `book_store`
  ADD CONSTRAINT `book_store_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `profile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
