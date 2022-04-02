-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Apr 02, 2022 at 04:26 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Zipcode` varchar(100) DEFAULT NULL,
  `product` varchar(100) NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `address`, `Zipcode`, `product`, `stock`) VALUES
(1, 'harshsharma', 'retretr', '34t', 'trew', 23),
(2, 'harshsharma', 'retretr', '23', 'one', 3254);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `stock` int DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `tag`, `stock`, `description`) VALUES
(1, 'one', 12, '', 0, ''),
(2, 'two', 34543, '3456', 3254, '43452'),
(11, 'two', 214, '3456', 23, '43452'),
(12, 'trew', 214, '3456', NULL, '43452'),
(13, 'two', 214, '3456', 4, '43452'),
(14, 'rey', 214, '3456', 4, '43452'),
(15, 'ret', 214, '3456', 4, 'rtyre'),
(16, 'ret', 214, '3456', 4, 'rtyre');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `role` varchar(100) NOT NULL,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `action` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `component`, `action`, `name`, `password`, `token`) VALUES
(3, 'thor', NULL, NULL, '', NULL, NULL),
(4, 'thor', NULL, NULL, 'harshsharma', '123', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImN0eSI6ImFwcGxpY2F0aW9uXC9qc29uIn0.eyJhdWQiOlsiXC8iXSwiZXhwIjoxNjQ4OTAwMzAwLCJqdGkiOiJhYmNkMTIzNDU2Nzg5IiwiaWF0IjoxNjQ4ODEzOTAwLCJpc3MiOiJcLyIsIm5iZiI6MTY0ODgxMzg0MCwic3ViIjoidGhvciJ9.jyfraz2MLtCWyGDdG-BldnperOHygokJ1Js1shdZAuPM8mpDtOHPabvEGmltxykEu3JMLpeCUfTw-0Zc9GLZAA'),
(6, 'admin', NULL, NULL, 'harsh', '1111', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImN0eSI6ImFwcGxpY2F0aW9uXC9qc29uIn0.eyJhdWQiOlsiXC8iXSwiZXhwIjoxNjQ4OTAxOTk3LCJqdGkiOiJhYmNkMTIzNDU2Nzg5IiwiaWF0IjoxNjQ4ODE1NTk3LCJpc3MiOiJcLyIsIm5iZiI6MTY0ODgxNTUzNywic3ViIjoiYWRtaW4ifQ.uZy6QLPRQM5XPQU2svlzPL1w7iuzwOfVq4y3x7AMl_CrpmgReghw7NdxAIMjVNY8rreDDoIlYovh-lPzdFSFKA'),
(7, 'thor', NULL, NULL, 'two', '21324234', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIvIiwiYXVkIjoiLyIsImlhdCI6MTM1Njk5OTUyNCwibmJmIjoxMzU3MDAwMDAwLCJuYW1lIjoidHdvIiwicGFzc3dvcmQiOiIyMTMyNDIzNCIsInJvbGUiOiJ0aG9yIn0.KZZJPXe2d8vaZ-IN5zxUMN7q5FrG7aQviAqZJlFf8jM'),
(8, 'admin', NULL, NULL, 'harshsharma', 'har123', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIvIiwiYXVkIjoiLyIsImlhdCI6MTM1Njk5OTUyNCwibmJmIjoxMzU3MDAwMDAwLCJuYW1lIjoiaGFyc2hzaGFybWEiLCJwYXNzd29yZCI6ImhhcjEyMyIsInJvbGUiOiJhZG1pbiJ9.lp3qJbGTNZ5Fk6UBbIvnBLthOBnko4euKq9ALMdRUDg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `title_optimization` varchar(100) NOT NULL,
  `Default_Price` int NOT NULL,
  `default_zip` varchar(100) NOT NULL,
  `default_stock` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`title_optimization`, `Default_Price`, `default_zip`, `default_stock`, `id`) VALUES
('N', 214, '23', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
