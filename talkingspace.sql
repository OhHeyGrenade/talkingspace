-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2017 at 08:13 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Web Programming', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(2, 'Web Design', 'Consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `user_id`, `body`, `create_date`) VALUES
(1, 1, 2, 'Suspendisse in magna ac magna tempor viverra vel eu erat. Vivamus erat est, sodales at enim eu, fermentum sodales augue. Ut nec placerat nisi, sit amet tincidunt quam. Aliquam ullamcorper urna et arcu vehicula, pharetra venenatis orci venenatis. Nunc rutrum, magna et venenatis iaculis, felis tortor tempor sapien, et cursus velit mauris eu quam. Aenean eleifend scelerisque diam, sed placerat elit mattis malesuada', '2014-07-02 16:41:55'),
(2, 2, 2, 'Suspendisse in magna ac magna tempor viverra vel eu erat. Vivamus erat est, sodales at enim eu, fermentum sodales augue. Ut nec placerat nisi, sit amet tincidunt quam. Aliquam ullamcorper urna et arcu vehicula, pharetra venenatis orci venenatis. Nunc rutrum, magna et venenatis iaculis, felis tortor tempor sapien, et cursus velit mauris eu quam. Aenean eleifend scelerisque diam, sed placerat elit mattis malesuada', '2014-07-02 16:41:55'),
(3, 2, 1, '<p>Great Post!</p>', '2014-07-03 18:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(1, 1, 1, 'Favorite Server-Side Language', 'What is your favorite server-side language?', '0000-00-00 00:00:00', '2014-07-02 15:30:20'),
(2, 2, 2, 'How did you learn CSS and HTML?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat. Suspendisse rutrum lacus tortor, a luctus ante dapibus nec. Suspendisse ac arcu dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus', '0000-00-00 00:00:00', '2014-07-02 16:57:45'),
(3, 2, 1, 'This is a test', '<p>Hello, this is a test</p>', '2014-07-03 20:30:06', '2014-07-03 18:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(1, 'Josh Bryson', 'sleeplesseditor@email.com', '', 'SEditor', '827ccb0eea8a706c4c34a16891f84e7b', '', '0000-00-00 00:00:00', '2014-07-02 15:26:21'),
(2, 'John Doe', 'jdoe@gmail.com', 'avatar2.jpg', 'JDoe', '827ccb0eea8a706c4c34a16891f84e7b', '', '0000-00-00 00:00:00', '2014-07-02 16:40:45'),
(3, 'Steven Wright', 'swright@yahoo.com', 'download.jpg', 'swright', '827ccb0eea8a706c4c34a16891f84e7b', '', '2014-07-03 17:37:16', '2014-07-03 15:37:16'),
(4, 'Jane Doe', 'jane@yahoo.com', 'sample2.jpg', 'jane', '81dc9bdb52d04dc20036dbd8313ed055', 'I am jane', '2014-07-03 17:58:43', '2014-07-03 15:58:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
