-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2024 at 11:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '', '2024-04-10 16:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `date`) VALUES
(1, 'Vietnam', '2024-04-15 13:48:31'),
(2, 'USA', '2024-04-15 13:48:54'),
(3, 'Korea', '2024-04-15 13:49:05'),
(4, 'Philippines', '2024-04-15 13:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dishes_id` int(16) NOT NULL,
  `restaurant_id` int(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `dsc` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dishes_id`, `restaurant_id`, `title`, `dsc`, `price`, `image`) VALUES
(1, 1, '10 Original Flavor Fried Chicken Tenders', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '20.00', '661ec547edbef.jpg'),
(2, 1, 'Combo Original Flavor Tenders Fried Chicken', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ec9e9ee308.jpg'),
(3, 1, 'Combo Fried Chicken Rice', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ecb10d89d8.jpg'),
(4, 1, 'Combo Flava Roasted Chicken', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ecb9e9f5ca.jpg'),
(5, 2, 'Crispy Fried Chicken', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '10.00', '661ecd49530c2.png'),
(6, 2, 'BBQ Flavored Shaken Potatoes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '7.00', '6627a6e64c2a6.png'),
(7, 2, 'Spaghetti with Beef Sauce + Soda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '20.00', '661ecdaba5b44.png'),
(8, 2, 'Combo Burger Shrimp + Potatoes + Soda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ecde08bfad.jpg'),
(9, 3, 'Beef Spaghetti', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '20.00', '661ed15aeea4a.png'),
(10, 3, 'Chicken Skewer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '15.00', '661ed17ef364d.png'),
(11, 3, 'Honey Chicken Rice', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '20.00', '661ed194c918f.png'),
(12, 3, 'HS Chicken Set', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ed1b94799c.png'),
(13, 6, 'Ice Cream Cone', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '5.00', '661ed207a6533.png'),
(14, 6, 'Fried Chicken Rice + Cocacola', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '20.00', '661ed2274ff88.png'),
(15, 6, 'Special Royal Beef Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '25.00', '661ed239a4ecf.png'),
(16, 6, 'Combo Chicken + Potatoes + Cocacola', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, esse. Dignissimos nihil ex tempore, et reiciendis facilis, eos dicta harum enim possimus praesentium. Necessitatibus tenetur soluta perferendis autem ut natus?', '30.00', '661ed2577960b.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(16) NOT NULL,
  `user_id` int(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `quantity` int(16) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(2, 2, 'Combo Original Flavor Tenders Fried Chicken', 1, '25.00', 'closed', '2024-04-25 10:53:42'),
(5, 2, 'BBQ Flavored Shaken Potatoes', 1, '7.00', 'rejected', '2024-04-25 10:50:59'),
(7, 2, 'Beef Spaghetti', 1, '20.00', 'closed', '2024-04-28 12:56:33'),
(8, 5, 'Beef Spaghetti', 2, '20.00', 'in process', '2024-04-28 13:00:30'),
(9, 5, 'Chicken Skewer', 1, '15.00', 'closed', '2024-04-28 13:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(16) NOT NULL,
  `frm_id` int(16) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `date`) VALUES
(1, 5, 'rejected', 'Sorry', '2024-04-25 10:50:59'),
(2, 2, 'closed', 'Tks', '2024-04-25 10:53:42'),
(3, 1, 'in process', 'waiting', '2024-04-28 10:23:36'),
(4, 7, 'in process', 'Waiting', '2024-04-28 12:56:15'),
(5, 7, 'closed', 'Tks', '2024-04-28 12:56:33'),
(6, 8, 'in process', 'waiting', '2024-04-28 13:00:30'),
(7, 9, 'closed', 'tks for order', '2024-04-28 13:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(16) NOT NULL,
  `category_id` int(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `open_hr` varchar(255) NOT NULL,
  `close_hr` varchar(255) NOT NULL,
  `open_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `category_id`, `title`, `email`, `phone`, `url`, `open_hr`, `close_hr`, `open_days`, `address`, `image`, `date`) VALUES
(1, 1, 'KFC', 'KFC@example.com', '0335553335', 'https://kfcvietnam.com.vn', '7am', '11pm', 'Mon-Sat', 'Tan Quy Ward, District 7, Ho Chi Minh City', '6620345b5c800.png', '2024-04-17 20:43:07'),
(2, 4, 'Jollibee', 'jollibee@example.com', '0335553333', 'https://jollibee.com.vn', '8am', '10pm', '24hr-x7', 'Tan Hung Ward, District 7, Ho Chi Minh', '661d55841e60c.jpeg', '2024-04-15 16:27:48'),
(3, 3, 'Lotteria', 'lotteria@example.com', '0336699933', 'https://www.lotteria.vn', '7am', '11pm', 'Mon-Fri', 'Tan Kieng Ward, District 7, Ho Chi Minh', '661d565f88295.jpeg', '2024-04-15 16:31:27'),
(6, 2, 'McDonald', 'mcdonalds@example.com', '0336699966', 'https://mcdonalds.vn', '6am', '12am', 'Mon-Sat', 'Tan Phu Ward, District 7, Ho Chi Minh', '661e58a15860c.png', '2024-04-16 10:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` int(16) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `firstname`, `lastname`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(2, 'customer', 'nhan', 'le', 'customer@example.com', '0335553555', 'e10adc3949ba59abbe56e057f20f883e', 'District 1, HCM', 1, '2024-04-23 12:22:24'),
(5, 'customer2', 'john', 'Hery', 'johnhery@example.com', '0335553399', 'e10adc3949ba59abbe56e057f20f883e', 'District 9, Ho Chi Minh', 1, '2024-04-28 12:59:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dishes_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dishes_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
