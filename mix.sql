-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 06:04 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mix`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `id` int(225) NOT NULL,
  `pid` int(255) NOT NULL,
  `sid` int(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `oprice` int(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`id`, `pid`, `sid`, `sname`, `location`, `oprice`, `discription`, `date`, `status`) VALUES
(4, 2, 16, 'asd', 'Layyah', 30000, 'i wanna buy this one', '2020-06-25', '1'),
(5, 2, 17, 'tlha', 'DGK', 28000, 'i wanna  bue this one ', '2020-06-27', '1'),
(6, 1, 17, 'tlha', 'Layyah', 4000, 'for family', '2020-06-28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(225) NOT NULL,
  `post_id` int(225) NOT NULL,
  `user_id` int(225) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user_id`, `user_name`, `comment`, `date`, `status`) VALUES
(3, 1, 17, 'Tlha Hassan ', 'yest its good .', '2019-12-18', '1'),
(5, 5, 15, 'M Fakhar Hayat', 'nice growth\r\n', '2020-03-25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reply`
--

CREATE TABLE `comment_reply` (
  `id` int(225) NOT NULL,
  `comment_id` int(225) NOT NULL,
  `post_id` int(225) NOT NULL,
  `Replyer_id` int(255) NOT NULL,
  `Replyer_name` varchar(255) NOT NULL,
  `Reply` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_reply`
--

INSERT INTO `comment_reply` (`id`, `comment_id`, `post_id`, `Replyer_id`, `Replyer_name`, `Reply`, `date`, `status`) VALUES
(1, 3, 1, 15, 'fakhar', 'thanks', '2020-03-25', 1),
(2, 3, 1, 15, 'fakhar', 'thansk', '2020-03-25', 1),
(5, 5, 5, 15, 'fakhar', 'yes its growing up', '2020-03-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `id2`, `title`, `user1`, `user2`, `message`, `timestamp`, `user1read`, `user2read`) VALUES
(1, 1, 'hello', 1, 17, 'how r u', 1593245181, 'yes', 'yes'),
(2, 1, 'perosnal', 15, 17, 'hello', 1593249178, 'yes', 'yes'),
(2, 2, '', 17, 0, 'hi<br />\r\n', 1593249796, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(225) NOT NULL,
  `user_id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `published` int(225) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 15, 'Genral News', 'Motivation', '0', '7be5295dddc4705eeab5b666eee26bea.png', '<p>its post for check</p>', 1, '2019-12-17', '2019-12-17'),
(5, 15, 'Genral News', 'Diary', '0', '24393a87ba1b571242af38dc51c9b531.jpg', '<p>I HAVE SOMTHISNG FOR YOU .</p>', 1, '2020-03-24', '2020-03-24'),
(6, 15, 'wasy newa', 'Excellent', '0', '17c8cccbe71db44b46802c6c45064d10.jpg', '<p>its a dumy product are u ready</p>', 1, '2020-04-12', '2020-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(255) NOT NULL,
  `post_id` int(255) NOT NULL,
  `topic_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(225) NOT NULL,
  `product_title` varchar(225) NOT NULL,
  `product_type` varchar(225) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `kg_mund` varchar(255) NOT NULL,
  `gunny` varchar(255) NOT NULL,
  `price_limit` varchar(255) NOT NULL,
  `location` varchar(225) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `saler` varchar(255) NOT NULL,
  `saler_id` varchar(225) NOT NULL,
  `published` int(225) NOT NULL,
  `date` date NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_title`, `product_type`, `quality`, `kg_mund`, `gunny`, `price_limit`, `location`, `contact`, `description`, `images`, `saler`, `saler_id`, `published`, `date`, `status`) VALUES
(1, ' my new product lounch', 'Wheat', 'Excellent', '100 , 2.5', '1', '3500 , 4000', 'Layyah', '03040808926', '<p>its new trail season of crops. don\'t worry we can handle it. we know&nbsp; there is beg problem of corona but don\'t worry</p>', '81a62f7323207b4f5531367023224433.png , 4bc19769cbc8287261954c8e43754069.png , 8821ac4083853fe2af3c67df4c23f35e.png', 'fakhar', '15', 1, '2020-04-12', 1),
(2, 'Broker Info, Genral News', 'Cotton', 'Excellent', '200 , 5', '', '20000 , 30000', 'Layyah', '03040808926', '<p>hair is catton pics&nbsp;</p>', '1d9afe4a53da68895ff8302d7ab4f67b.jpg , e3e571833e4e68a894e6f121fb53b649.jpg , 7d5cb6b8abbc33b8b793ec848289afb9.jpg', 'fakhar', '15', 1, '2020-06-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(225) NOT NULL,
  `Role` varchar(225) NOT NULL,
  `Discreption` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `Role`, `Discreption`) VALUES
(1, 'Farmer', 'Farmer cansale his/her product .'),
(2, 'Broker', 'Broker can sale and Buy product');

-- --------------------------------------------------------

--
-- Table structure for table `seedprice`
--

CREATE TABLE `seedprice` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seedprice`
--

INSERT INTO `seedprice` (`id`, `name`, `description`, `date`, `price`) VALUES
(1, 'Cotton', 'cotton is used for making clothes', '2019-12-17', 4670.08),
(2, 'Wheat', 'Wheat is used for making bread', '2019-12-12', 3500.07),
(3, 'Rice', 'Rice is used for making Biryanii', '2019-12-12', 2200.89),
(4, 'SugarCance', 'SugarCance is used for making Sugar', '2019-12-12', 190.134);

-- --------------------------------------------------------

--
-- Table structure for table `seedsratehistory`
--

CREATE TABLE `seedsratehistory` (
  `id` int(11) NOT NULL,
  `seedid` int(11) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seedsratehistory`
--

INSERT INTO `seedsratehistory` (`id`, `seedid`, `price`, `date`) VALUES
(13, 1, 156.1, '2019-12-07'),
(14, 1, 156, '2019-12-07'),
(15, 1, 150, '2019-12-07'),
(16, 1, 145, '2019-12-07'),
(17, 1, 15615, '2019-12-07'),
(18, 1, 156, '2019-12-07'),
(19, 3, 126, '2019-12-07'),
(20, 2, 106, '2019-12-07'),
(21, 1, 156.01, '2019-12-07'),
(22, 2, 106.112, '2019-12-08'),
(23, 3, 126.67, '2019-12-08'),
(24, 4, 78.134, '2019-12-08'),
(25, 1, 4500, '2019-12-12'),
(26, 2, 3500.07, '2019-12-12'),
(27, 3, 2200.89, '2019-12-12'),
(28, 4, 190.134, '2019-12-12'),
(29, 1, 4670.08, '2019-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(2, 'Motivation', 'motivation'),
(3, 'Diary', 'diary');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(225) NOT NULL,
  `profile` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `frist_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contect` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `Role` int(11) NOT NULL,
  `approved` varchar(225) NOT NULL,
  `profile_status` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `profile`, `username`, `frist_name`, `last_name`, `gender`, `cnic`, `email`, `contect`, `address`, `city`, `zip`, `Role`, `approved`, `profile_status`, `password`, `date`, `status`) VALUES
(15, '4e9e585362187ffeb149aa210a131b88.png', 'fakhar', 'M Fakhar', 'Hayat', 'Male', '3220325623551', 'mfakharhayatsamtiah19@gmail.com', '0304-0808-926', '              district layyah', 'LAYYAH', '31200', 1, 'Yes', 'Complete', '202cb962ac59075b964b07152d234b70', '2019-12-04', '1'),
(16, 'profile.png', 'asd', 'not_define', 'not_define', 'not_define', '3220325623559', 'email@gmail.com', '0301-1234-567', 'Enter address ....', 'not_define', 'not_define', 2, 'Yes', 'Not Complete', '202cb962ac59075b964b07152d234b70', '2019-12-17', '1'),
(17, 'profile.png', 'tlha', 'Tlha', 'Hassan', 'Male', '3220325623590', 'tlha@gmail.com', '0301-1234-568', ' islamabad ', 'islamabad', '32100', 2, 'Yes', 'Complete', '202cb962ac59075b964b07152d234b70', '2019-12-18', '1'),
(18, '2b4fa70643c7073f595c98ae44dc360a.jpg', 'khizar', 'Khizar', 'Hayat', 'Male', '3220325623553', 'khizar@gmail.com', '0306-7999-009', ' district layyah', 'LAYYAH', '31200', 2, 'Yes', '', '202cb962ac59075b964b07152d234b70', '2020-06-28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Farmer','Broker','Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp(5) NULL DEFAULT CURRENT_TIMESTAMP(5),
  `updated_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'muhammad zohaib', 'zohaib@gmail.com', 'Admin', '202cb962ac59075b964b07152d234b70', '2019-12-11 20:40:53.00000', '2019-12-11 20:40:53.00000'),
(2, 'john', 'john@gmail.com', 'Author', '202cb962ac59075b964b07152d234b70', '2019-12-14 22:24:37.00000', '2019-12-14 22:24:37.00000'),
(15, 'fakhar', 'mfakharhayatsamtiah19@gmail.com', 'Broker', '202cb962ac59075b964b07152d234b70', '2019-12-03 19:00:00.00000', '2019-12-12 07:29:30.00000'),
(16, 'asd', 'email@gmail.com', 'Broker', '202cb962ac59075b964b07152d234b70', '2019-12-16 19:00:00.00000', '2020-06-26 18:07:12.00000'),
(17, 'tlha', 'tlha@gmail.com', 'Farmer', '202cb962ac59075b964b07152d234b70', '2019-12-17 19:00:00.00000', '2020-06-26 18:07:21.00000'),
(18, 'khizar', 'khizar@gmail.com', 'Broker', '202cb962ac59075b964b07152d234b70', '2020-06-27 19:00:00.00000', '2020-06-27 19:20:42.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_postcoment` (`post_id`);

--
-- Indexes for table `comment_reply`
--
ALTER TABLE `comment_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_userpost` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seedprice`
--
ALTER TABLE `seedprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seedsratehistory`
--
ALTER TABLE `seedsratehistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fff` (`seedid`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`cnic`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD KEY `Role` (`Role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment_reply`
--
ALTER TABLE `comment_reply`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seedprice`
--
ALTER TABLE `seedprice`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seedsratehistory`
--
ALTER TABLE `seedsratehistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Fk_postcoment` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `Fk_userpost` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `seedsratehistory`
--
ALTER TABLE `seedsratehistory`
  ADD CONSTRAINT `fff` FOREIGN KEY (`seedid`) REFERENCES `seedprice` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
