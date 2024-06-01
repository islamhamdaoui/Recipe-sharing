-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 04:29 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipy`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `date`) VALUES
(55, 15, '-Fish pie-\r\n\r\n*Ingredients:*\r\n\r\nFloury Potatoes - 900g\r\nOlive Oil - 2 tbsp\r\nSemi-skimmed Milk - 600ml\r\nWhite Fish Fillets - 800g\r\nPlain flour - 1 tbsp\r\nNutmeg - Grating\r\nDouble Cream - 3 tbsp\r\nJerusalem Artichokes - 200g\r\nLeek - 1 finely sliced\r\nPrawns - 200g peeled raw\r\nParsley - Large handful\r\nDill - Handful\r\nLemon - Grated zest of 1\r\nGruyÃ¨re - 25g grated\r\nLemon - Juice of 1\r\n', '2024-06-01 16:23:15'),
(56, 14, '--Burek--\r\n\r\nIngredients:\r\nFilo Pastry - 1 Packet\r\nMinced Beef - 150g\r\nOnion - 150g\r\nOil - 40g\r\nSalt - Dash\r\nPepper - Dash\r\n\r\n*HOW TO COOK IT*\r\n\r\nFry the finely chopped onions and minced meat in oil. Add the salt and pepper. Grease a round baking tray and put a layer of pastry in it. Cover with a thin layer of filling and cover this with another layer of filo pastry which must be well coated in oil. Put another layer of filling and cover with pastry. When you have five or six layers, cover with filo pastry, bake at 200ÂºC/392ÂºF for half an hour and cut in quarters and serve.', '2024-06-01 16:25:49'),
(57, 16, 'Koudous Recipe please?', '2024-06-01 16:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `date`, `image`) VALUES
(13, '  islamhamdaoui', 'islamhamdaoui2000@gmail.com', 'caesar123', '2024-04-20 13:59:33', NULL),
(14, 'islamhamdaoui', 'magoragamer@gmail.com', 'caesar123', '2024-05-31 23:18:29', NULL),
(15, 'zaidimohamed', 'zaidi@gmail.com', 'caesar123', '2024-05-31 23:25:17', NULL),
(16, 'Rayan', 'aslamhamdaoui@gmail.com', 'caesar123', '2024-06-01 16:26:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `username` (`username`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
