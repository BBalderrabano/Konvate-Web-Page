-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 11:27 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konvate`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_list`
--

CREATE TABLE `card_list` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_lightning` tinyint(1) NOT NULL,
  `deck_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_list`
--

INSERT INTO `card_list` (`id`, `name`, `text`, `image_url`, `is_lightning`, `deck_id`) VALUES
(1, 'Flecha', 'Coloca 1 \r\nEsta carta se mantiene en la mano si no la jugaste', 'pictures/arrow.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deck_highlights`
--

CREATE TABLE `deck_highlights` (
  `id` int(11) NOT NULL,
  `deck_id` int(11) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deck_highlights`
--

INSERT INTO `deck_highlights` (`id`, `deck_id`, `time_start`, `time_end`, `is_default`) VALUES
(1, 1, '0000-00-00', '0000-00-00', 1),
(2, 2, '0000-00-00', '0000-00-00', 1),
(3, 9, '0000-00-00', '0000-00-00', 1),
(4, 10, '0000-00-00', '0000-00-00', 1),
(5, 11, '0000-00-00', '0000-00-00', 1),
(6, 12, '0000-00-00', '0000-00-00', 1),
(12, 14, '2021-01-26', '2021-01-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deck_list`
--

CREATE TABLE `deck_list` (
  `id` int(126) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `icon_url` varchar(256) NOT NULL,
  `ab_amount` int(24) NOT NULL,
  `def_amount` int(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deck_list`
--

INSERT INTO `deck_list` (`id`, `name`, `image_url`, `icon_url`, `ab_amount`, `def_amount`) VALUES
(1, 'Arquero', 'pictures/carlos-amaral-elf-archer.jpg', 'icons/A_Icon_Arquero.png', 4, 5),
(2, 'Enano', 'pictures/cole-eastburn-dwarfblacksmith.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(9, 'Caballero', 'pictures/manuel-castanon-the-hopeful-knight-final.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(10, 'Orco', 'pictures/markus-neidel-ork-axe.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(11, 'Nigromante', 'pictures/peter-ortiz-necro-final2.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(12, 'Mago', 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(13, 'Alquimista', 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg', 'icons/A_Icon_Arquero.png', 5, 5),
(14, 'Archa', 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg', 'icons/A_Icon_Arquero.png', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(24) NOT NULL,
  `description` varchar(24) NOT NULL,
  `link` varchar(126) NOT NULL,
  `display_order` int(24) NOT NULL,
  `parent_id` int(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `description`, `link`, `display_order`, `parent_id`) VALUES
(1, 'Home', 'index.php', 0, 0),
(2, 'Mazos', 'decks.php', 1, 0),
(7, 'Manual', 'manual.php', 2, 0),
(8, 'Acerca de Nosotros', 'about.php', 3, 0),
(9, 'Contactenos', 'contact.php', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(126) NOT NULL,
  `password` varchar(126) NOT NULL,
  `nickname` varchar(126) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nickname`) VALUES
('julian', '123', 'archa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_list`
--
ALTER TABLE `card_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deck_highlights`
--
ALTER TABLE `deck_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deck_list`
--
ALTER TABLE `deck_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_list`
--
ALTER TABLE `card_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deck_highlights`
--
ALTER TABLE `deck_highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `deck_list`
--
ALTER TABLE `deck_list`
  MODIFY `id` int(126) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
