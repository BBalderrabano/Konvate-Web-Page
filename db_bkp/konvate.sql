-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 10:33 PM
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

DROP TABLE IF EXISTS `card_list`;
CREATE TABLE IF NOT EXISTS `card_list` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_lightning` tinyint(1) NOT NULL,
  `deck_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_list`
--

UPDATE `card_list` SET `id` = 1,`name` = 'Flecha',`text` = 'Coloca 1 \r\nEsta carta se mantiene en la mano si no la jugaste',`image_url` = 'pictures/arrow.png',`is_lightning` = 0,`deck_id` = 1 WHERE `card_list`.`id` = 1;
UPDATE `card_list` SET `id` = 2,`name` = 'Mina',`text` = 'Coloca 1 \r\nEsta carta no le gusta a Archa, a el le gusta los tipos',`image_url` = 'pictures/arrow.png',`is_lightning` = 0,`deck_id` = 1 WHERE `card_list`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `deck_highlights`
--

DROP TABLE IF EXISTS `deck_highlights`;
CREATE TABLE IF NOT EXISTS `deck_highlights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deck_id` int(11) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deck_highlights`
--

UPDATE `deck_highlights` SET `id` = 1,`deck_id` = 1,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 1;
UPDATE `deck_highlights` SET `id` = 2,`deck_id` = 2,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 2;
UPDATE `deck_highlights` SET `id` = 3,`deck_id` = 9,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 3;
UPDATE `deck_highlights` SET `id` = 4,`deck_id` = 10,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 4;
UPDATE `deck_highlights` SET `id` = 5,`deck_id` = 11,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 5;
UPDATE `deck_highlights` SET `id` = 6,`deck_id` = 12,`time_start` = '0000-00-00',`time_end` = '0000-00-00',`is_default` = 1 WHERE `deck_highlights`.`id` = 6;
UPDATE `deck_highlights` SET `id` = 12,`deck_id` = 14,`time_start` = '2021-01-26',`time_end` = '2021-01-26',`is_default` = 1 WHERE `deck_highlights`.`id` = 12;

-- --------------------------------------------------------

--
-- Table structure for table `deck_list`
--

DROP TABLE IF EXISTS `deck_list`;
CREATE TABLE IF NOT EXISTS `deck_list` (
  `id` int(126) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `icon_url` varchar(256) NOT NULL,
  `ab_amount` int(24) NOT NULL,
  `def_amount` int(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deck_list`
--

UPDATE `deck_list` SET `id` = 1,`name` = 'Arquero',`image_url` = 'pictures/carlos-amaral-elf-archer.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 4,`def_amount` = 5 WHERE `deck_list`.`id` = 1;
UPDATE `deck_list` SET `id` = 2,`name` = 'Enano',`image_url` = 'pictures/cole-eastburn-dwarfblacksmith.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 2;
UPDATE `deck_list` SET `id` = 9,`name` = 'Caballero',`image_url` = 'pictures/manuel-castanon-the-hopeful-knight-final.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 9;
UPDATE `deck_list` SET `id` = 10,`name` = 'Orco',`image_url` = 'pictures/markus-neidel-ork-axe.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 10;
UPDATE `deck_list` SET `id` = 11,`name` = 'Nigromante',`image_url` = 'pictures/peter-ortiz-necro-final2.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 11;
UPDATE `deck_list` SET `id` = 12,`name` = 'Mago',`image_url` = 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 12;
UPDATE `deck_list` SET `id` = 13,`name` = 'Alquimista',`image_url` = 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 13;
UPDATE `deck_list` SET `id` = 14,`name` = 'Archa',`image_url` = 'pictures/alexandre-chaudret-bra-prophetie-royaume-lur-final-viewer.jpg',`icon_url` = 'icons/A_Icon_Arquero.png',`ab_amount` = 5,`def_amount` = 5 WHERE `deck_list`.`id` = 14;

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int(24) NOT NULL AUTO_INCREMENT,
  `description` varchar(24) NOT NULL,
  `link` varchar(126) NOT NULL,
  `display_order` int(24) NOT NULL,
  `parent_id` int(24) NOT NULL,
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

UPDATE `navigation` SET `id` = 1,`description` = 'Home',`link` = 'index.php',`display_order` = 0,`parent_id` = 0 WHERE `navigation`.`id` = 1 AND `navigation`.`description` = 'Home' AND `navigation`.`link` = 'index.php' AND `navigation`.`display_order` = 0 AND `navigation`.`parent_id` = 0;
UPDATE `navigation` SET `id` = 2,`description` = 'Mazos',`link` = 'decks.php',`display_order` = 1,`parent_id` = 0 WHERE `navigation`.`id` = 2 AND `navigation`.`description` = 'Mazos' AND `navigation`.`link` = 'decks.php' AND `navigation`.`display_order` = 1 AND `navigation`.`parent_id` = 0;
UPDATE `navigation` SET `id` = 7,`description` = 'Manual',`link` = 'manual.php',`display_order` = 2,`parent_id` = 0 WHERE `navigation`.`id` = 7 AND `navigation`.`description` = 'Manual' AND `navigation`.`link` = 'manual.php' AND `navigation`.`display_order` = 2 AND `navigation`.`parent_id` = 0;
UPDATE `navigation` SET `id` = 8,`description` = 'Acerca de Nosotros',`link` = 'about.php',`display_order` = 3,`parent_id` = 0 WHERE `navigation`.`id` = 8 AND `navigation`.`description` = 'Acerca de Nosotros' AND `navigation`.`link` = 'about.php' AND `navigation`.`display_order` = 3 AND `navigation`.`parent_id` = 0;
UPDATE `navigation` SET `id` = 9,`description` = 'Contactenos',`link` = 'contact.php',`display_order` = 4,`parent_id` = 0 WHERE `navigation`.`id` = 9 AND `navigation`.`description` = 'Contactenos' AND `navigation`.`link` = 'contact.php' AND `navigation`.`display_order` = 4 AND `navigation`.`parent_id` = 0;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(126) NOT NULL,
  `password` varchar(126) NOT NULL,
  `nickname` varchar(126) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

UPDATE `users` SET `username` = 'julian',`password` = '123',`nickname` = 'archa' WHERE `users`.`username` = 'julian' AND `users`.`password` = '123' AND `users`.`nickname` = 'archa';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
