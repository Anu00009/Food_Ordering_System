-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 22, 2025 at 08:41 AM
-- Server version: 10.6.7-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 1, 'ANU', 'anushree.keshari@cognizant.com', '77777', 'HI');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Arjun', '7777777777', 'arjun@google.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Burger (300 x 1) - ', 300, '2025-08-11', 'completed'),
(2, 1, 'Arjun', '7777777777', 'arjun@google.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Cold Coffee (200 x 1) - Burger (300 x 1) - ', 500, '2025-08-13', 'completed'),
(3, 1, 'Arjun', '7777777777', 'arjun@google.com', 'credit card', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Burger (300 x 1) - Cold Coffee (200 x 1) - ', 500, '2025-08-13', 'completed'),
(4, 1, 'Arjun', '7777777777', 'arjun@google.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Burger (300 x 2) - ', 600, '2025-08-14', 'completed'),
(5, 1, 'A rjun', '7777777', 'arjun@google.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Cold Coffee (200 x 1) - ', 200, '2025-08-14', 'completed'),
(6, 1, 'A rjun', '7777777', 'arjun@google.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130', 'Cold Coffee (200 x 1) - ', 200, '2025-08-15', 'pending'),
(7, 2, 'ANU', '8306798134', 'anushree@gmail.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130', 'Cold Coffee (200 x 1) - ', 200, '2025-08-15', 'pending'),
(8, 2, 'ANU', '8306798134', 'anushree@gmail.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130', 'Burger (300 x 1) - ', 300, '2025-08-15', 'pending'),
(9, 2, 'ANU', '8306798134', 'anushree@gmail.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130', 'Burger (300 x 1) - Cold Coffee (200 x 1) - Strawberry Brownie (350 x 1) - Juice (200 x 1) - ', 1050, '2025-08-15', 'pending'),
(10, 2, 'ANU', '8306798134', 'anushree@gmail.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130', 'Burger (300 x 2) - Pizza (550 x 1) - ', 1150, '2025-08-17', 'pending'),
(11, 5, 'Anushree', '8307896532', 'anushree1@gmail.com', 'cash on delivery', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130', 'Pizza (550 x 1) - Burger (300 x 1) - ', 850, '2025-08-20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Burger', 'Fast Food', 300, 'burger-1.png'),
(2, 'Cold Coffee', 'Drinks', 200, 'drink-2.png'),
(3, 'Pizza', 'Main Dish', 550, 'pizza-1.png'),
(4, 'Ice Cream', 'Desserts', 200, 'dessert-5.png'),
(5, 'Cheese Burger', 'Fast Food', 300, 'burger-2.png'),
(6, 'Strawberry Brownie', 'Desserts', 350, 'dessert-6.png'),
(7, 'Juice', 'Drinks', 200, 'drink-1.png'),
(8, 'Cup Cake', 'Desserts', 300, 'dessert-4.png'),
(9, 'Roasted Chicken', 'Main Dish', 350, 'dish-4.png'),
(10, 'Noodles', 'Main Dish', 400, 'dish-2.png'),
(11, 'Arabiata Pasta', 'Main Dish', 300, 'dish-3.png'),
(12, 'Mojito', 'Drinks', 450, 'drink-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'A rjun', 'arjun@google.com', '7777777', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'A 310, Urban homes, Bamheta, Ghaziabad, Ghaziabad, UP, India - 600130'),
(2, 'ANU', 'anushree@gmail.com', '8306798134', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130'),
(5, 'Anushree', 'anushree1@gmail.com', '8307896532', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'A 310, Urban homes, Bamheta, Chennai, Chennai, UP, India - 600130');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
