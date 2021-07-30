-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2021 at 11:35 AM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_year` year NOT NULL,
  `end_year` year DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `user_id`, `start_year`, `end_year`, `name`, `info`, `deleted`) VALUES
(1, 1, 2012, 2015, 'Bacheloropleiding: Docent Wiskunde', 'aan de NHL te Leeuwarden, inclusief programmeren in Pascal met Delphi', NULL),
(2, 1, 2005, 2010, 'Bacheropleiding: Econometrie en Besliskunde', 'aan de RUG', NULL),
(3, 1, 1999, 2005, 'Middelbare school: Gymnasium', 'profiel Natuur en Techniek, te Tiel en Buitenpost', NULL),
(4, 1, 2017, 2017, 'Heftruckcertificaat', 'bij HOC opleiding en training', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `user_id`, `name`, `deleted`) VALUES
(1, 1, 'programmeren', NULL),
(2, 1, 'korfballen', NULL),
(3, 1, 'lezen', NULL),
(4, 1, 'voeding/koken', NULL),
(5, 1, 'hardlopen', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` smallint NOT NULL,
  `user_id` int NOT NULL,
  `start_year` year NOT NULL,
  `end_year` year DEFAULT NULL,
  `function` varchar(255) NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `start_year`, `end_year`, `function`, `info`, `deleted`) VALUES
(1, 1, 2020, NULL, 'Orientatie op de arbeidsmarkt', 'en onder andere veel programmeren in C# als autodidact', NULL),
(2, 1, 2016, 2019, 'Orderpicker', 'bij Muelink en Grol in Groningen', NULL),
(3, 1, 2013, 2014, 'Docent wiskunde', 'aan Pieter Jelles !mpulse te Leeuwarden (als stagiair)', NULL),
(4, 1, 2012, 2013, 'Docent wiskunde en rekenen', 'aan MBO Friesche Poort in Drachten (als stagiair)', NULL),
(5, 1, 2012, 2012, 'Orderpicker', 'bij Muelink en Grol in Groningen', NULL),
(6, 1, 2005, 2011, 'Orderpicker', 'bij Noordhoff-uitgevers in distributiecentrum in Groningen, als vakantiebaan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `deleted`) VALUES
(1, 1, 'programmeren', NULL),
(2, 1, 'wiskunde', NULL),
(3, 1, 'trainen', NULL),
(4, 1, 'coachen', NULL),
(5, 1, 'orderpicken', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date_birth` date NOT NULL,
  `pitch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `date_birth`, `pitch`, `deleted`) VALUES
(1, 'Jelle', 'Slofstra', 'jelleslofstra@example.com', '0644444444', '1987-06-10', 'Ik ben zelfstandig, analytisch sterk en verantwoordelijk en ik werk oplossingsgericht. Ik ben dagelijks als autodidact met programmeren bezig en wil van die passie ook mijn werk maken.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `volunteerjobs`
--

CREATE TABLE `volunteerjobs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_year` year NOT NULL,
  `end_year` year DEFAULT NULL,
  `function` varchar(255) NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `volunteerjobs`
--

INSERT INTO `volunteerjobs` (`id`, `user_id`, `start_year`, `end_year`, `function`, `info`, `deleted`) VALUES
(1, 1, 2021, NULL, 'Penningmeester', 'voor supportersvereniging de Clubbinders', NULL),
(2, 1, 2008, 2019, 'Jeugdwedstrijdsecretaris', 'administratieve functie, contactpersoon richting andere verenigingen en de landelijke korfbalbond (KNKV) inzake jeugdteams', NULL),
(3, 1, 2005, 2019, 'Lid van de JeugdBegeleidingsGroep', 'regelen en adviseren in jeugdzaken. Onder andere: vinden van trainers voor alle teams, opzetten en begeleiden van kabouterkorfbal (welpen), contacten met trainers en ouders', NULL),
(4, 1, 2003, 2018, 'Trainer en Coach', 'van verchillende jeugdteams (voornamelijk in de leeftijd 12-15)', NULL),
(5, 1, 2003, NULL, 'Overige taken voor kv Flamingo\'s', 'Jeugdscheidsrechter, barvrijwilliger, aanvoerder/regelaar voor eigen team', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteerjobs`
--
ALTER TABLE `volunteerjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteerjobs`
--
ALTER TABLE `volunteerjobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `volunteerjobs`
--
ALTER TABLE `volunteerjobs`
  ADD CONSTRAINT `volunteerjobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
