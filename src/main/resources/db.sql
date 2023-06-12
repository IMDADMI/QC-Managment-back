-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 juin 2023 à 00:59
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetgl`
--
CREATE DATABASE IF NOT EXISTS `projetgl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `projetgl`;

-- --------------------------------------------------------

--
-- Structure de la table `bascket`
--

DROP TABLE IF EXISTS `bascket`;
CREATE TABLE IF NOT EXISTS `bascket` (
  `bascket_id` int NOT NULL AUTO_INCREMENT,
  `totale_amount` double NOT NULL,
  PRIMARY KEY (`bascket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bascket`
--

INSERT INTO `bascket` (`bascket_id`, `totale_amount`) VALUES
(1, 20000),
(12, 20022),
(13, 41951.600000000006),
(14, 41951.600000000006),
(15, 41951.600000000006),
(16, 41951.600000000006),
(17, 41951.600000000006),
(18, 41951.600000000006),
(19, 41951.600000000006),
(20, 41951.600000000006),
(21, 41951.600000000006),
(22, 41951.600000000006),
(23, 41951.600000000006),
(24, 41951.600000000006),
(25, 41951.600000000006),
(26, 41951.600000000006),
(27, 41951.600000000006),
(28, 41951.600000000006),
(29, 41951.600000000006),
(30, 41951.600000000006),
(31, 41951.600000000006),
(32, 41951.600000000006),
(33, 41951.600000000006),
(34, 41951.600000000006),
(35, 41951.600000000006),
(36, 41951.600000000006),
(37, 41951.600000000006),
(38, 41951.600000000006),
(39, 41951.600000000006),
(40, 41951.600000000006),
(41, 10517.07),
(42, 29516.079999999998),
(43, 29516.079999999998),
(44, 29516.079999999998),
(45, 29516.079999999998),
(46, 3858.07),
(47, 43858.07),
(48, 40118.28),
(49, 40118.28),
(50, 40118.28),
(51, 26849.06),
(52, 26849.06),
(53, 26849.06),
(54, 26849.06),
(55, 26849.06),
(56, 24500.61),
(57, 1098),
(58, 10632.69),
(59, 32591.17),
(60, 10632.69),
(61, 162939.44),
(62, 313404.84),
(63, 436818.53),
(64, 27934.420000000002),
(65, 75338.6),
(66, 20323.86),
(67, 15432.28),
(68, 37300.82),
(69, 217210.72),
(70, 241242.74),
(71, 45981.98);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `comd_id` int NOT NULL AUTO_INCREMENT,
  `payement_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `totale_amount` double NOT NULL,
  `delevrie_date` date NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`comd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`comd_id`, `payement_method`, `totale_amount`, `delevrie_date`, `status`) VALUES
(1, 'cash', 20000, '2018-01-01', 'encore'),
(2, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(3, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(4, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(5, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(6, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(7, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(8, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(9, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(10, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(11, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(12, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(13, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(14, 'cash', 41951.600000000006, '2023-05-04', 'encore'),
(15, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(16, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(17, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(18, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(19, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(20, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(21, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(22, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(23, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(24, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(25, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(26, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(27, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(28, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(29, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(30, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(31, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(32, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(33, 'cash', 41951.600000000006, '2023-05-05', 'encore'),
(34, 'cash', 10517.07, '2023-05-05', 'encore'),
(35, 'cash', 29516.079999999998, '2023-05-05', 'encore'),
(36, 'cash', 29516.079999999998, '2023-05-05', 'encore'),
(37, 'cash', 29516.079999999998, '2023-05-05', 'encore'),
(38, 'cash', 29516.079999999998, '2023-05-05', 'encore'),
(39, 'cash', 3858.07, '2023-05-05', 'encore'),
(40, 'cash', 43858.07, '2023-05-06', 'encore'),
(41, 'cash', 40118.28, '2023-05-07', 'encore'),
(42, 'cash', 40118.28, '2023-05-07', 'encore'),
(43, 'cash', 40118.28, '2023-05-07', 'encore'),
(44, 'cash', 26849.06, '2023-05-07', 'encore'),
(45, 'cash', 26849.06, '2023-05-07', 'encore'),
(46, 'cash', 26849.06, '2023-05-14', 'encore'),
(47, 'cash', 26849.06, '2023-05-14', 'encore'),
(48, 'cash', 26849.06, '2023-05-14', 'encore'),
(49, 'cash', 24500.61, '2023-05-14', 'encore'),
(50, 'cash', 1098, '2023-05-15', 'encore'),
(51, 'cash', 10632.69, '2023-05-15', 'encore'),
(52, 'cash', 32591.17, '2023-05-15', 'encore'),
(53, 'cash', 10632.69, '2023-05-15', 'encore'),
(54, 'cash', 162939.44, '2023-06-10', 'encore'),
(55, 'cash', 313404.84, '2023-06-10', 'encore'),
(56, 'cash', 436818.53, '2023-06-11', 'encore'),
(57, 'cash', 27934.420000000002, '2023-06-11', 'encore'),
(58, 'cash', 75338.6, '2023-06-11', 'encore'),
(59, 'cash', 20323.86, '2023-06-11', 'encore'),
(60, 'cash', 15432.28, '2023-06-11', 'encore'),
(61, 'cash', 37300.82, '2023-06-11', 'encore'),
(62, 'cash', 217210.72, '2023-06-11', 'encore'),
(63, 'cash', 241242.74, '2023-06-13', 'encore'),
(64, 'cash', 45981.98, '2023-06-19', 'encore');

-- --------------------------------------------------------

--
-- Structure de la table `component`
--

DROP TABLE IF EXISTS `component`;
CREATE TABLE IF NOT EXISTS `component` (
  `comp_id` int NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_price` double NOT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `component`
--

INSERT INTO `component` (`comp_id`, `comp_name`, `comp_type`, `comp_price`) VALUES
(2, 'Intel Core i5-1135G7', 'Processeur', 7000),
(3, 'Ryzen™ 7 5800X3D', 'Processeur', 23000),
(4, 'Ryzen™ 11 9800X7D', 'Processeur', 40000),
(5, 'Ryzen™ 19 9800X7D', 'Processeur', 20000),
(6, 'GIGABYTE Z790', 'Carte mere', 2999.67),
(7, 'ASUS PRIME X670-P', 'Carte mere', 2999.67),
(8, 'ASUS ROG STRIX X670E', 'Carte mere', 2999.67),
(9, 'MSI MEG Z790 ACE', 'Carte mere', 2999.67),
(10, 'ASRock X570 Phantom 4', 'Carte mere', 2999.67),
(11, 'MSI X570-A PRO', 'Carte mere', 2999.67),
(12, 'OCPC Radeon RX 580 ', 'Graphique', 2999.67),
(13, 'INNO3D GeForce GTX 1650', 'Graphique', 2999.67),
(14, 'ASUS DUAL GeForce RTX 3050 O8G (LHR)', 'Graphique', 2999.67),
(15, 'MSI GeForce GTX 1650 D6 VENTUS XS OC', 'Graphique', 2999.67),
(16, 'OCPC GeForce GTX 1650 4Go GDDR6', 'Graphique', 2999.67),
(17, 'OCPC GeForce RTX 3060Ti LHR 8GB GDDR6', 'Graphique', 2999.67),
(18, 'Kingston 1To NVMe ', 'Stockage SSD', 2999.67),
(19, 'T-FORCE DELTA WHITE 500GB', 'Stockage SSD', 2999.67),
(20, 'T-FORCE DELTA BLACK 500GB', 'Stockage SSD', 2999.67),
(21, 'OCPC 1TB XTL-300', 'Stockage SSD', 2999.67),
(22, 'Seagate BarraCuda 500 Go', 'Stockage HDD', 2999.67),
(23, 'Toshiba P300 1 To – 3,5', 'Stockage HDD', 2999.67),
(24, 'NZXT H510i', 'Boitier PC', 2999.67),
(25, 'NZXT H710i', 'Boitier PC', 2999.67),
(26, 'Corsair Obsidian Series 1000D', 'Boitier PC', 2999.67),
(27, 'SilverStone Fortress FT05', 'Boitier PC', 2999.67),
(28, 'NZXT H1', 'Boitier PC', 2999.67),
(29, 'Biostar H510M', 'Memoire Ram', 2999.67),
(30, 'Gigabyte A520M-K', 'Memoire Ram', 2999.67),
(31, 'ASUS PRIME H510M-A', 'Memoire Ram', 2999.67),
(32, 'Biostar A520MH', 'Memoire Ram', 2999.67),
(33, 'ASRock X570 Phantom', 'Memoire Ram', 2999.67),
(34, 'MSI X570-A PRO', 'Memoire Ram', 2999.67),
(35, 'Corsair RM850x', 'Alimentation', 2999.67),
(36, 'Gigabyte AORUS P850W 80+ Gold', 'Alimentation', 2999.67),
(37, 'ASUS ROG Thor 850W', 'Alimentation', 2999.67),
(38, 'Intel Core i3-1115G4', 'Processeur', 2000),
(39, 'Intel Core i9-1115G4', 'Processeur', 10000),
(40, 'Ryzen AMD Athlon Silver 3050U', 'Processeur', 1500),
(41, 'ASUS 8Go', 'Memoire Ram', 300),
(42, 'NVIDIA GeForce RTX 3060Ti', 'Graphique', 4002.5),
(43, 'ASUS 16Go', 'Memoire Ram', 300),
(44, 'NVIDIA GeForce RTX 4090', 'Graphique', 4002.5),
(45, 'AMD Radeon Vega 8 Graphics', 'Graphique', 5099.5),
(46, 'ASUS 4Go', 'Memoire Ram', 650),
(47, 'NVIDIA GeForce GTX 1660', 'Graphique', 1999.5),
(48, 'NVIDIA GeForce RTX 2060 SUPER', 'Graphique', 3333.5),
(49, 'SEAGATE 1To', 'Stockage HDD', 499.99),
(50, 'Intel Core i7-1165G7', 'Processeur', 4870.99),
(51, 'Kingston 512Go', 'Stockage SSD', 449.99),
(52, 'Intel Core i7-3770 3.40GHz', 'Processeur', 2560.99),
(53, 'Kingston 256Go', 'Stockage SSD', 229.99);

-- --------------------------------------------------------

--
-- Structure de la table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
CREATE TABLE IF NOT EXISTS `configuration` (
  `conf_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `unite` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `comp_id` int NOT NULL,
  PRIMARY KEY (`conf_id`),
  KEY `configuration_ibfk_1` (`product_id`),
  KEY `configuration_ibfk_2` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `configuration`
--

INSERT INTO `configuration` (`conf_id`, `quantity`, `unite`, `product_id`, `comp_id`) VALUES
(1, 1, '2.3GHz', 147, 2),
(3, 1, '8Go', 147, 44),
(4, 1, '256GO', 147, 20),
(5, 1, '2.3GHz', 148, 3),
(6, 1, '8Go', 148, 34),
(7, 1, '8Go', 148, 17),
(8, 1, '512GO', 148, 22),
(9, 1, '2.3GHz', 150, 3),
(10, 2, '4Go', 150, 46),
(11, 2, '256GO', 150, 53),
(12, 1, '16GO', 150, 48),
(13, 1, '2.3GHz', 149, 40),
(14, 1, '16GO', 149, 43),
(15, 1, '24GO', 149, 47),
(16, 1, '3.8GHz', 152, 39),
(17, 1, '1To', 152, 49),
(18, 2, '512GO', 152, 51),
(19, 2, '8GO', 153, 41),
(20, 1, '2.4GHz', 153, 2),
(21, 1, '2.4GHz', 154, 50),
(22, 1, '2GO', 154, 45),
(23, 1, '16GO', 155, 43),
(24, 2, '512GO', 155, 51),
(25, 1, '8GO', 151, 41),
(26, 1, '256GO', 151, 53),
(27, 1, '2.8GHz', 156, 38),
(28, 1, '8GO', 156, 41),
(29, 1, '16GO', 157, 43),
(30, 1, '512GO', 157, 51),
(31, 1, '256GO', 156, 53),
(32, 1, '2.8GHz', 157, 2),
(33, 1, '2.8GHz', 151, 5),
(34, 1, '3.2GHz', 155, 4);

-- --------------------------------------------------------

--
-- Structure de la table `ordere`
--

DROP TABLE IF EXISTS `ordere`;
CREATE TABLE IF NOT EXISTS `ordere` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_quantity` int NOT NULL,
  `order_price` double NOT NULL,
  `discount` double NOT NULL,
  `order_date` date NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `bascket_id` int NOT NULL,
  `comd_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `bascketId` (`bascket_id`),
  KEY `comdId` (`comd_id`),
  KEY `userId` (`user_id`),
  KEY `productId` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ordere`
--

INSERT INTO `ordere` (`order_id`, `order_quantity`, `order_price`, `discount`, `order_date`, `product_id`, `user_id`, `bascket_id`, `comd_id`) VALUES
(1, 2, 2500, 20, '2008-12-12', 147, 4, 12, 5),
(2, 2, 2500, 20, '2008-12-12', 147, 4, 12, 5),
(3, 2, 2500, 20, '2008-12-12', 147, 4, 12, 5),
(4, 2, 2500, 20, '2008-12-12', 147, 4, 12, 5),
(5, 1, 3858.07, 20, '2023-04-28', 147, 4, 40, 33),
(6, 1, 6708.54, 20, '2023-04-28', 152, 4, 40, 33),
(7, 1, 22990.99, 20, '2023-04-28', 154, 4, 40, 33),
(8, 6, 8394, 20, '2023-04-28', 158, 4, 40, 33),
(9, 1, 3858.07, 20, '2023-04-28', 147, 4, 41, 34),
(10, 4, 5960, 20, '2023-04-28', 219, 4, 41, 34),
(11, 1, 699, 20, '2023-04-28', 213, 4, 41, 34),
(12, 1, 699, 20, '2023-04-28', 213, 4, 42, 35),
(13, 1, 3858.07, 20, '2023-04-28', 147, 4, 42, 35),
(14, 4, 5960, 20, '2023-04-28', 219, 4, 42, 35),
(15, 1, 699, 20, '2023-04-28', 213, 4, 43, 36),
(16, 1, 3858.07, 20, '2023-04-28', 147, 4, 43, 36),
(17, 4, 5960, 20, '2023-04-28', 219, 4, 43, 36),
(18, 1, 699, 20, '2023-04-28', 213, 4, 44, 37),
(19, 1, 3858.07, 20, '2023-04-28', 147, 4, 44, 37),
(20, 4, 5960, 20, '2023-04-28', 219, 4, 44, 37),
(21, 1, 3858.07, 20, '2023-04-28', 147, 4, 45, 38),
(22, 1, 699, 20, '2023-04-28', 213, 4, 45, 38),
(23, 4, 5960, 20, '2023-04-28', 219, 4, 45, 38),
(24, 1, 3858.07, 20, '2023-04-28', 147, 4, 46, 39),
(25, 1, 3858.07, 20, '2023-04-29', 147, 6, 47, 40),
(26, 1, 11290.99, 20, '2023-04-30', 188, 7, 48, 41),
(27, 1, 659, 20, '2023-04-30', 203, 7, 48, 41),
(28, 1, 6774.62, 20, '2023-04-30', 148, 7, 48, 41),
(29, 6, 8394, 20, '2023-04-30', 158, 7, 48, 41),
(30, 1, 11290.99, 20, '2023-04-30', 188, 7, 49, 42),
(31, 1, 6774.62, 20, '2023-04-30', 148, 7, 49, 42),
(32, 1, 659, 20, '2023-04-30', 203, 7, 49, 42),
(33, 6, 8394, 20, '2023-04-30', 158, 7, 49, 42),
(34, 1, 6774.62, 20, '2023-04-30', 148, 7, 50, 43),
(35, 1, 11290.99, 20, '2023-04-30', 188, 7, 50, 43),
(36, 6, 8394, 20, '2023-04-30', 158, 7, 50, 43),
(37, 1, 659, 20, '2023-04-30', 203, 7, 50, 43),
(38, 1, 659, 20, '2023-04-30', 203, 7, 50, 43),
(39, 1, 11290.99, 20, '2023-04-30', 188, 7, 50, 43),
(40, 6, 8394, 20, '2023-04-30', 158, 7, 50, 43),
(41, 1, 6774.62, 20, '2023-04-30', 148, 7, 50, 43),
(42, 1, 3858.07, 20, '2023-04-30', 147, 7, 51, 44),
(43, 1, 22990.99, 20, '2023-04-30', 154, 7, 51, 44),
(44, 1, 22990.99, 20, '2023-04-30', 154, 7, 52, 45),
(45, 1, 3858.07, 20, '2023-04-30', 147, 7, 52, 45),
(46, 1, 3858.07, 20, '2023-04-30', 147, 7, 53, 46),
(47, 1, 22990.99, 20, '2023-04-30', 154, 7, 53, 46),
(48, 1, 22990.99, 20, '2023-04-30', 154, 7, 54, 47),
(49, 1, 3858.07, 20, '2023-04-30', 147, 7, 54, 47),
(50, 1, 3858.07, 20, '2023-04-30', 147, 7, 55, 48),
(51, 1, 22990.99, 20, '2023-04-30', 154, 7, 55, 48),
(52, 1, 3858.07, 20, '2023-04-30', 147, 7, 56, 49),
(53, 4, 5596, 20, '2023-04-30', 158, 7, 56, 49),
(54, 1, 15046.54, 20, '2023-04-30', 151, 7, 56, 49),
(55, 1, 399, 20, '2023-05-01', 202, 4, 57, 50),
(56, 1, 699, 20, '2023-05-01', 213, 4, 57, 50),
(57, 1, 3858.07, 20, '2023-05-01', 147, 4, 58, 51),
(58, 1, 6774.62, 20, '2023-05-01', 148, 4, 58, 51),
(59, 1, 1799, 20, '2023-05-01', 204, 4, 59, 52),
(60, 1, 790, 20, '2023-05-01', 217, 4, 59, 52),
(61, 1, 6774.62, 20, '2023-05-01', 148, 4, 60, 53),
(62, 1, 3858.07, 20, '2023-05-01', 147, 4, 60, 53),
(63, 6, 107945.94, 20, '2023-05-27', 153, 4, 61, 54),
(64, 4, 26834.16, 20, '2023-05-27', 152, 4, 61, 54),
(65, 2, 15160, 20, '2023-05-27', 199, 4, 61, 54),
(66, 2, 15160, 20, '2023-05-27', 199, 4, 61, 54),
(67, 4, 26834.16, 20, '2023-05-27', 152, 4, 61, 54),
(68, 6, 107945.94, 20, '2023-05-27', 153, 4, 61, 54),
(69, 2, 15160, 20, '2023-05-27', 199, 4, 62, 55),
(70, 4, 26834.16, 20, '2023-05-27', 152, 4, 62, 55),
(71, 6, 107945.94, 20, '2023-05-27', 153, 4, 62, 55),
(72, 10, 150465.40000000002, 20, '2023-05-27', 151, 4, 62, 55),
(73, 2, 15160, 20, '2023-05-27', 199, 4, 62, 55),
(74, 6, 107945.94, 20, '2023-05-27', 153, 4, 62, 55),
(75, 10, 150465.40000000002, 20, '2023-05-27', 151, 4, 62, 55),
(76, 4, 26834.16, 20, '2023-05-27', 152, 4, 62, 55),
(77, 4, 26834.16, 20, '2023-05-28', 152, 4, 63, 56),
(78, 7, 125936.93000000001, 20, '2023-05-28', 153, 4, 63, 56),
(79, 10, 38580.700000000004, 20, '2023-05-28', 147, 4, 63, 56),
(80, 3, 22740, 20, '2023-05-28', 199, 4, 63, 56),
(81, 1, 59262, 20, '2023-05-28', 200, 4, 63, 56),
(82, 10, 150465.40000000002, 20, '2023-05-28', 151, 4, 63, 56),
(83, 3, 22740, 20, '2023-05-28', 199, 4, 63, 56),
(84, 4, 26834.16, 20, '2023-05-28', 152, 4, 63, 56),
(85, 7, 125936.93000000001, 20, '2023-05-28', 153, 4, 63, 56),
(86, 10, 150465.40000000002, 20, '2023-05-28', 151, 4, 63, 56),
(87, 10, 38580.700000000004, 20, '2023-05-28', 147, 4, 63, 56),
(88, 1, 59262, 20, '2023-05-28', 200, 4, 63, 56),
(89, 6, 23148.420000000002, 20, '2023-05-28', 147, 4, 64, 57),
(90, 1, 790, 20, '2023-05-28', 180, 4, 64, 57),
(91, 4, 3996, 20, '2023-05-28', 205, 4, 64, 57),
(92, 6, 23148.420000000002, 20, '2023-05-28', 147, 4, 64, 57),
(93, 4, 3996, 20, '2023-05-28', 205, 4, 64, 57),
(94, 1, 790, 20, '2023-05-28', 180, 4, 64, 57),
(95, 3, 29356.620000000003, 20, '2023-05-28', 155, 4, 65, 58),
(96, 2, 45981.98, 20, '2023-05-28', 154, 4, 65, 58),
(97, 3, 20323.86, 20, '2023-05-28', 148, 4, 66, 59),
(98, 4, 15432.28, 20, '2023-05-28', 147, 9, 67, 60),
(99, 4, 15432.28, 20, '2023-05-28', 147, 9, 68, 61),
(100, 2, 15160, 20, '2023-05-28', 199, 9, 68, 61),
(101, 1, 6708.54, 20, '2023-05-28', 152, 9, 68, 61),
(102, 2, 15160, 20, '2023-05-28', 199, 9, 69, 62),
(103, 1, 6708.54, 20, '2023-05-28', 152, 9, 69, 62),
(104, 4, 15432.28, 20, '2023-05-28', 147, 9, 69, 62),
(105, 10, 179909.9, 20, '2023-05-28', 153, 9, 69, 62),
(106, 1, 6708.54, 20, '2023-05-30', 152, 4, 70, 63),
(107, 4, 15432.28, 20, '2023-05-30', 147, 4, 70, 63),
(108, 2, 15160, 20, '2023-05-30', 199, 4, 70, 63),
(109, 1, 5033.34, 20, '2023-05-30', 149, 4, 70, 63),
(110, 10, 179909.9, 20, '2023-05-30', 153, 4, 70, 63),
(111, 2, 45981.98, 20, '2023-06-05', 154, 4, 71, 64);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `garrnty_perriode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type`, `brand`, `model`, `description`, `product_price`, `garrnty_perriode`, `weight`, `image`) VALUES
(147, 'LENOVO Ideacentre 3 07ADA05 - AMD Athlon 3050U - RAM 8Go - Stockage 256 Go SSD', 'PC-Bureau', 'LENOVO', '07ADA05 - AMD Athlon 3050U - RAM 8Go - Stockage 256 Go SSD', 'Avec son exceptionnelle puissance de traitement et sa carte graphique indépendante, sans oublier sa mémoire abondante, le PC IdeaCentre 3 (AMD) est prêt à gérer toutes les tâches que vous lui confierez. Bénéficiez de performances fluides et puissantes, que vous exécutiez plusieurs applications, regardiez des films, écoutiez de la musique ou fassiez toutes ces autres choses que faites au cours de votre journée.', 3858.07, '12 mois', 3.55, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FLenovo-id1.png?alt=media&token=f18d9a17-8c87-44ed-a3fc-b63dc61e42c8'),
(148, 'PC HP Pro 6300 MT Core i7-3770 3.40GHz 16Go/1To SSD Wifi W10', 'PC-Bureau', 'HP', 'Pro 6300 MT Core i7-3770 3.40GHz 16Go/1To SSD Wifi W10', 'Le PC de bureau HP modèle Pro 6300 Microtower est un PC de gamme professionnelle extrêmement fiable au format Moyenne Tour conçu pour les tâches bureautique et multimédia les plus exigeantes', 6774.62, '12 mois', 9.3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FPC-HP-Pro-6300-MT-Core-i7-3770-3-40GHz-16Go-2To-Wifi-W10.jpg?alt=media&token=eed2a422-343c-4fd3-9a50-09e2d6d8fc6f'),
(149, 'PC Dell Optiplex 3010 DT i7-3770 3.90GHz 16Go/1To Wifi W10', 'PC-Bureau', 'Dell', 'Optiplex 3010 DT i7-3770 3.90GHz 16Go/1To Wifi W10', 'Le PC de bureau Dell modèle Optiplex 3010 DT est un PC de gamme professionnelle fiable et robuste au format Desktop pouvant être placé à la verticale ou à l\'horizontale .', 5033.34, '12 mois', 8, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FPC-Dell-Optiplex-7010-DT-Core-i5-3470-3-20GHz-16Go-2To-Wifi-W10.jpg?alt=media&token=484dd340-1734-47b4-af2e-4c926983319c'),
(150, 'PC Dell Optiplex 7010 DT Core i5-3470 3.20GHz 16Go/2To Wifi W10', 'PC-Bureau', 'Dell', 'Optiplex 7010 DT Core i5-3470 3.20GHz 16Go/2To Wifi W10', 'Présentation La PC de bureau Dell modèle Optiplex 7010 DT est un PC de gamme professionnelle extrêmement fiable au format Desktop et parfaitement optimisé pour les tâches bureautique et multimédia avancées.', 3393.34, '12 mois', 7.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FPC-Dell-Optiplex-7010-DT-Core-i5-3470-3-20GHz-16Go-2To-Wifi-W10.jpg?alt=media&token=484dd340-1734-47b4-af2e-4c926983319c'),
(151, 'Apple iMac with 4.5K Retina display MGTF3FN/A - Début 2021 - M1 8 Go RAM 256 Go Argent AZERTY', 'PC-Bureau', 'Apple', 'iMac with 4.5K Retina display MGTF3FN/A - Début 2021 - M1 8 Go RAM 256 Go Argent AZERTY', 'Hello, nouvel iMac.\nInspiré du meilleur de l’univers Apple, transfiguré par la puce M1 et conçu pour se démarquer tout en étant parfaitement adapté à votre mode de vie.', 15046.54, '12 mois', 4.46, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2F2232683520.jpg?alt=media&token=d52a860f-9527-4a37-88b7-33e8ff4288cb'),
(152, 'PC  Asus ExpertCenter D5 SFF D500SA-5104000530 (90PF0231-M17440)', 'PC-Bureau', 'Asus', 'ExpertCenter D5 SFF D500SA-5104000530 (90PF0231-M17440)', 'Le ASUS ExpertCenter D5 SFF offre des performances puissantes et modulables créées spécialement pour répondre aux besoins des petites entreprises. Son format ultracompact et flexible permet aux utilisateurs d\'apprécier un espace de travail minimaliste. Par ailleurs, avec l\'aide de nos services d\'assistance simplifiée pour les petites entreprises, vous subissez moins de temps d\'interruption et des coûts de possession réduits.', 6708.54, '12 mois', 7.8, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FASUS-ExpertCenter-D5-SFF-D500SA-5104000530.jpg?alt=media&token=f6420552-4ff2-4a20-ab52-099135de26f1'),
(153, 'HP Pavilion x360 14-dw0052nf - Intel Core i5-1135G7 - RAM 8 Go - SSD 512 Go - 14 tactile', 'PC-Portable', 'HP', 'Pavilion x360 14-dw0052nf', 'Le PC portable HP Pavilion x360 est un ordinateur convertible 2-en-1 qui vous permet de passer facilement d\'un mode portable à un mode tablette. Avec son processeur Intel Core i5, sa RAM de 8 Go et son SSD de 512 Go, il offre des performances élevées pour toutes vos tâches informatiques.', 17990.99, '24 mois', 1.61, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Portable%2Fhplaptop.jpg?alt=media&token=7694c046-ddf1-44fc-aab4-df2761a4f699'),
(154, 'ASUS Zenbook UX425EA-BM123T - Intel Core i7-1165G7 - RAM 16 Go - SSD 512 Go - 14', 'PC-Portable', 'ASUS', 'Zenbook UX425EA-BM123T', 'L\'ASUS Zenbook UX425EA est un PC portable ultra-léger et ultra-fin avec un design élégant en aluminium. Il est équipé d\'un processeur Intel Core i7, d\'une RAM de 16 Go et d\'un SSD de 512 Go pour des performances optimales. Son écran de 14 pouces offre une résolution Full HD et une grande luminosité pour une expérience visuelle immersive.', 22990.99, '36 mois', 1.13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Portable%2Fasus-laptop.jpg?alt=media&token=f51200f1-2916-472e-83c7-869261502dce'),
(155, 'VIST PC Gaming MSI PBM Ryzen 7 - RAM 16Go - GeForce RTX 3050 - SSD 1To M.2 - Windows 10 Pro', 'PC-Bureau', 'MSI', 'PBM Ryzen 7 - RAM 16Go - GeForce RTX 3050 - SSD 1To M.2 - Windows 10 Pro', 'Le PC Gaming MSI PBM Ryzen 7 offre des performances puissantes et modulables créées spécialement pour répondre aux besoins des petites entreprises. Son format ultracompact et flexible permet aux utilisateurs d\'apprécier un espace de travail minimaliste. Par ailleurs, avec l\'aide de nos services d\'assistance simplifiée pour les petites entreprises, vous subissez moins de temps d\'interruption et des coûts de possession réduits.', 9785.54, '24 mois', 12, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2FMegaport-PC-Gamer-Duke.jpg?alt=media&token=c64e1862-e6ab-4b7d-b5c4-2ae46cb8b2c9'),
(156, 'Acer Aspire C24-1651 - Intel Core i3-1115G4 - RAM 8 Go - SSD 256 Go - 23,8', 'PC-Bureau', 'Acer', 'Aspire C24-1651', 'Le PC de bureau Acer Aspire C24-1651 est un ordinateur tout-en-un compact et élégant, avec un écran de 23,8 pouces. Avec son processeur Intel Core i3, sa RAM de 8 Go et son SSD de 256 Go, il offre des performances fiables pour une utilisation quotidienne.', 7490.99, '12 mois', 5.68, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2F414TcjLGM8L._AC_SX425_.jpg?alt=media&token=e3924387-7b5e-44b1-ba5c-c4a76ed85922'),
(157, 'Dell Optiplex 3080 - Intel Core i5-10500 - RAM 16 Go - SSD 512 Go - Tour', 'PC-Bureau', 'Dell', 'Optiplex 3080', 'Le PC de bureau Dell Optiplex 3080 est un ordinateur puissant pour les professionnels et les utilisateurs avancés. Avec son processeur Intel Core i5, sa RAM de 16 Go et son SSD de 512 Go, il offre des performances rapides et efficaces pour toutes vos tâches informatiques.', 9999.99, '24 mois', 6.67, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/PC-Bureau%2Fdell.jpg?alt=media&token=7dfdeff1-ea4d-4067-8e47-c8e5666d6e5b'),
(158, 'AMD Ryzen 5 3600 Wraith Stealth (3.6 GHz / 4.2 GHz) MPK', 'Processeur', 'AMD', 'Ryzen 5 3600 Wraith Stealth (3.6 GHz / 4.2 GHz) MP', 'Le processeur AMD Ryzen 5 3600 Wraith Stealth (3.6 GHz / 4.2 GHz) fait partie des premiers processeurs pour PC gravés en 7 nm. Ses 6 coeurs et 12 threads, une fréquence jusqu’à 4.2 GHz et 35 Mo de GameCache le rendent polyvalent, il vous permet de tout faire rapidement et en toute fluidité.', 1399, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FAMD-Ryzen-5-3600.jpg?alt=media&token=7645a092-f049-4966-abe7-b585a0947dd4'),
(159, 'AMD Ryzen 5 5600X (3.7 GHz / 4.6 GHz) BOX', 'Processeur', 'AMD', 'Ryzen 5 5600X (3.7 GHz / 4.6 GHz) BOX', 'Le processeur AMD Ryzen 5 5600X est taillé pour le jeu vidéo : 6 Cores, 12 Threads et GameCache 35 Mo. Sans parler des fréquences natives et boost qui atteignent des sommets pour vous permettre de profiter de vos jeux préférés dans les meilleures conditions.', 2390, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FAMD-Ryzen-5-5600x.jpg?alt=media&token=97b979b8-347d-4019-a627-32b89cb1cdc4'),
(160, 'AMD Ryzen 7 5800X (3.8 GHz / 4.7 GHz) BOX', 'Processeur', 'AMD', 'Ryzen 7 5800X (3.8 GHz / 4.7 GHz) BOX', 'Le processeur AMD Ryzen 7 5800X est optimisé pour le jeu vidéo : 8 Cores, 16 Threads et GameCache 36 Mo. Sans parler des fréquences natives et boost qui atteignent des sommets pour vous permettre de profiter de vos jeux préférés dans les meilleures conditions.', 3790, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FAMD-Ryzen-7-5800X.jpg?alt=media&token=bd6ed1df-a0dc-415e-a6e6-4101b321aa2b'),
(161, 'AMD Ryzen 9 5950X (3.4 GHz / 4.9 GHz) BOX', 'Processeur', 'AMD', 'Ryzen 9 5950X (3.4 GHz / 4.9 GHz) BOX', 'Le processeur AMD Ryzen 9 5950X est ce qui se fait de mieux pour le jeu vidéo et le streaming : 16 Cores, 32 Threads et GameCache 72 Mo. Sans parler des fréquences natives et boost qui atteignent des sommets pour vous permettre de profiter de vos jeux préférés dans les meilleures conditions.', 7490, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FAMD-Ryzen-9-5950X.jpg?alt=media&token=f496b8b9-418a-40f5-9137-1245283d4bd8'),
(162, 'Intel Core i5-10400F (2.9 GHz / 4.3 GHz) BOX', 'Processeur', 'Intel', 'Core i5-10400F (2.9 GHz / 4.3 GHz) BOX', 'La 10ème génération de processeur Intel Core Comet Lake-S propose plus de coeurs et l’Hyper Threading depuis le Core i3 jusqu’au Core i9. Performances de haute volée dans les Jeux, réalité virtuelle, multitâche intensif, les processeurs Intel Core de 10ème génération sont ultra polyvalent.', 1549, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2Fi5-10400-3.jpg?alt=media&token=02f37811-ddca-4f9b-80ba-0fbb9d61e706'),
(163, 'Intel Core i7-11700KF (3.6 GHz / 5.0 GHz)', 'Processeur', 'Intel', 'Core i7-11700KF (3.6 GHz / 5.0 GHz)', 'La 11ème génération de processeur Intel Core Rocket Lake-S vous propulse vers toujours plus de puissance grâce à sa compatibilité avec la norme PCI-Express 4.0. Le processeur Intel Core i7-11700KF est doté de 8 Cores (16 Threads), de 16 Mo de cache et de fréquences Turbo pouvant atteindre 5.0 GHz.', 4990, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FIntel-Core-i7-11700KF-3.6-GHz-5.0-GHz-Setup-Game.jpg?alt=media&token=ea2d6212-8cd8-4ba3-9205-d168d1c332af'),
(164, 'Intel Core i9-12900KF (3.2 GHz / 5.2 GHz)', 'Processeur', 'Intel', 'Core i9-12900KF (3.2 GHz / 5.2 GHz)', 'Avec les processeurs Alder Lake, Intel signe une petite révolution dans le monde de l’architecture x86 en adoptant une technologie hybride basée sur 2 types de coeurs différents assemblés au sein d’une même puce : Les Performances-Cores et les Efficient-Cores.', 6990, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2Fintel-core-i9-12900kf-32-ghz-52-ghz-processeurs.jpg?alt=media&token=6c654df1-0279-4438-bb24-cf4507fa978f'),
(165, 'Intel Core i9-12900K (3.2 GHz / 5.2 GHz)', 'Processeur', 'Intel', 'Core i9-12900K (3.2 GHz / 5.2 GHz)', 'Avec les processeurs Alder Lake, Intel signe une petite révolution dans le monde de l’architecture x86 en adoptant une technologie hybride basée sur 2 types de coeurs différents assemblés au sein d’une même puce : Les Performances-Cores et les Efficient-Cores.', 6799, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2Fintel-core-i9-12900k-32-ghz-52-ghz-processeurs.jpg?alt=media&token=0b8ca2fa-e91d-40e7-a19a-9b3de69faac4'),
(166, 'Intel Core i3-10105F (3.7 GHz / 4.4 GHz)', 'Processeur', 'Intel', 'Core i3-10105F (3.7 GHz / 4.4 GHz)', 'La 10ème génération de processeur Intel Core Comet Lake Refresh propose plus de coeurs et l’Hyper Threading. Performances de haute volée dans les Jeux, réalité virtuelle, multitâche intensif, les processeurs Intel Core de 10ème génération sont ultra polyvalent.', 1690, '1 mois', 0.001, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Processeurs%2FI3-10105F.jpg?alt=media&token=a6284bdb-dead-46b5-95aa-b7f87075c207'),
(167, 'Nvidia GeForce GTX 1650 PH-GTX1650-O4GD6-P', 'Carte Graphique', 'Nvidia', 'GeForce GTX 1650 PH-GTX1650-O4GD6-P', 'Le meilleur du gaming sans se ruiner, c’est ce que propose la GeForce GTX 1650. Basée sur l’architecture NVIDIA Turing, la carte graphique ASUS GeForce PH-GTX1650-O4GD6-P propose des performances graphiques idéales pour la Full HD tout en étant très abordable.', 2390, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Carte-Graphique%2FGeForce-PHOENIX-GTX-1650.jpg?alt=media&token=5ee43f19-c3e9-4d33-9139-e03e015de14a'),
(168, 'Nvidia ROG STRIX GeForce RTX 3070 O8G GAMING V2 (LHR)', 'Carte Graphique', 'Nvidia', 'ROG STRIX GeForce RTX 3070 O8G GAMING V2 (LHR)', 'La carte graphique ASUS GeForce ROG STRIX RTX 3070 O8G GAMING V2 (LHR) embarque 8 Go de mémoire vidéo de nouvelle génération GDDR6. Ce modèle overclocké d’usine bénéficie de fréquences de fonctionnement élevées et d’un système de refroidissement amélioré gage de fiabilité et de performance', 13490, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Carte-Graphique%2Fasus-rog-strix-geforce-rtx-3070.jpg?alt=media&token=56b1ecda-532f-4747-bb4d-2745f0561586'),
(169, 'Nvidia ROG STRIX GeForce RTX 3070 O8G GAMING V2 (LHR)', 'Carte Graphique', 'Nvidia', 'ROG STRIX GeForce RTX 3070 O8G GAMING V2 (LHR)', 'La carte graphique ASUS GeForce ROG STRIX RTX 3070 O8G GAMING V2 (LHR) embarque 8 Go de mémoire vidéo de nouvelle génération GDDR6. Ce modèle overclocké d’usine bénéficie de fréquences de fonctionnement élevées et d’un système de refroidissement amélioré gage de fiabilité et de performance', 13490, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Carte-Graphique%2Fasus-rog-strix-geforce-rtx-3070.jpg?alt=media&token=56b1ecda-532f-4747-bb4d-2745f0561586'),
(170, 'AMD Radeon RX 6700 XT MECH 2X 12G OC', 'Carte Graphique', 'AMD', 'Radeon RX 6700 XT MECH 2X 12G OC', 'Mettez toutes les chances de votre côté grâce aux cartes graphiques AMD Radeon RX 6750 XT OC, avec des technologies de pointe pour : améliorer les performances de jeu, proposer des graphismes à couper le souffle et garantir une fluidité d’affichage optimale.', 9990, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Carte-Graphique%2FMSI-Radeon%E2%84%A2-RX-6700-XT-MECH-2X-12G.png?alt=media&token=e77c6734-5307-45e3-8a66-bb1c55a13a56'),
(171, 'AMD Radeon RX 580 8GB GDDR5', 'Carte Graphique', 'AMD', 'Radeon RX 580 8GB GDDR5', 'La carte graphique Radeon RX 580 8 Go GDDR5 256 bits offre d\'excellentes performances pour tous les titres de jeu AAA actuels. Les paramètres de stock, ou overclockés, prennent l\'avantage sur les autres joueurs avec ce GPU hautes performances.', 1590, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Carte-Graphique%2FAMD-Radeon-RX%20580.png?alt=media&token=2f2ea13a-cb9f-4895-9fe6-cac98a46e3e1'),
(172, 'Disque dur 3.5″ Western Digital Caviar Blue 500 Go SATA HDD', 'Stockage', 'Western Digital', 'Caviar Blue 500 Go SATA', 'Capacité : 500 Go\nProfondeur : 14.7 cm\nHauteur : 2 cm\nInterfaces : 1 x SATA 3 Gb/s - ATA série de 7 broches\nPoids : 380 g\n Baie compatible : 3.5″ x 1/4H', 390, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Stockage%2FDisquedurHdd500gowester.jpg?alt=media&token=920bef8a-57eb-4657-b60e-9070d00a8fb9'),
(173, 'Disque dur Toshiba P300 1 To - 3,5 HDD', 'Stockage', 'Toshiba', 'Toshiba P300 1 To - 3,5 HDD', 'Le HDWD110UZSVA 1 To de la gamme P300 de Toshiba est un disque dur de 3,5″ qui vous aidera à améliorer les performances de vos applications et de votre système. Une fois installé, ce disque dur Toshiba vous permettra d’optimiser les performances du système et des applications.', 490, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Stockage%2FToshibaHDD.jpg?alt=media&token=c0735e90-0c7e-4536-b4db-532ad9bf79c6'),
(174, 'Kingston 1To NVMe SSD', 'Stockage', 'Kingston', '1To NVMe SSD', 'Le SSD Kingston NV2 se dote d\'une interface PCIe 4.0 x4 NVMe pour une solution de stockage qui offre des vitesses de lecture/écriture allant jusqu\'à 3 500/2 800 Mo/s (suivant les modèles). Sa conception compacte rend le NV2 idéal pour les ordinateurs portables et les systèmes SFF.', 1290, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Stockage%2Fkingston-ssd-nv1-1-to.jpg?alt=media&token=9fad1070-7e75-4419-a63d-a6b5262d5bbe'),
(175, 'Crucial P3 1 To 3D M.2 PCIe NVMe SSD', 'Stockage', 'Crucial', 'P3 1 To 3D M.2 PCIe NVMe SSD', 'Le SSD Crucial P3 grâce à son interface PCIe 3.0 offre des performances près de 6 fois supérieures à celles des disques SSD SATA et 22 fois supérieures à celles des disques durs classiques. Le P3 optimise le matériel existant et est une solution plus économique que l\'achat de nouveaux systèmes.', 1190, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Stockage%2FSSD1ToCrucial.jpeg?alt=media&token=6e786d70-af0a-4928-a487-2b620c8bdd94'),
(176, 'XPG GAMMIX D20 16GB 3200MHz DDR4', 'RAM', 'XPG', 'GAMMIX D20 16GB 3200MHz DDR4', 'Le module de mémoire XPG GAMMIX D20 DDR4 est comme un justicier sortant des ténèbres. Ses performances furtives à 4133 MHz et son extérieur noir sinistre feront peur à tout adversaire.', 649, '1 mois', 0.25, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/RAM%2FRAmxpg16gb.jpg?alt=media&token=0015ddf7-2ead-43c2-a21f-d1ad141ac6f2'),
(177, 'Kingston FURY Impact SO-DIMM 32 Go DDR5 4800 MHz CL38', 'RAM', 'Kingston', 'FURY Impact SO-DIMM 32 Go DDR5 4800 MHz CL38', 'Offrez à votre ordinateur portable ou votre machine compacte une technologie de mémoire de pointe avec la DDR5 Kingston FURY Impact ! Mémoire SO-DIMM certifiée Intel XMP 3.0, la RAM DDR5 Kingston FURY Impact réunit toutes les fonctionnalités améliorées de la DDR5 dans un format fin et compact..', 3090, '1 mois', 0.25, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/RAM%2FFuryram32gb.jpg?alt=media&token=2abf4560-e43c-4d77-bef5-3170fb7634f0'),
(178, 'M.RED IRON GLASS', 'Boitier', 'M-RED', 'IRON GLASS', 'Le boîtier Iron Glass dispose d\'une double porte battante en verre trempé. Invisibilité des fils grâce au câble management Pour un visuel plus net et une utilisation agréable, le câble management invisible permet de regrouper et mettre en ordre les différents câbles.', 1990, '1 mois', 2, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Boitier%2Fm-red-iron-glass.jpg?alt=media&token=31c82945-e565-4c99-9d3d-107d509eecfa'),
(179, 'MSI MPG GUNGNIR 110R BLANC', 'Boitier', 'MSI', 'MPG GUNGNIR 110R BLANC', 'Le boîtier MSI MPG GUNGNIR 110R offre un style affirmé et haut en couleurs grâce à son ingénieux système RGB Mystic Light tout en proposant de bonnes performances ainsi qu\'un vaste espace intérieur. Compatible avec des cartes mères ATX, Mini-ITX et Micro-ATX, il embarque 4 ventilateurs ARGB de série.', 1499, '1 mois', 2, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Boitier%2Fmsi-mpg-gungnir-110r-blanc-boitiers.jpg?alt=media&token=94d27020-43f4-4f32-8144-d083fa49c578'),
(180, 'Corsair CV450 ATX 450W ATX12V - 80 PLUS Bronze', 'Blocs d\'alimentation', 'Corsair', 'CV450 ATX 450W ATX12V - 80 PLUS Bronze', 'L\'alimentation Corsair CV450 80PLUS Bronze bénéficie d\'un câblage gainé noir pour s\'intégrer en toute discrétion dans votre boitier. Les alimentations de la gamme Corsair CV sont idéales pour votre nouvel ordinateur grâce à leur certification 80 PLUS Bronze qui permet de fournir des tensions stables.', 790, '1 mois', 4, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Blocaliment%2FBlocd\'alimentation.jpg?alt=media&token=5a3e6f5b-a691-443c-8930-b258b67a9818'),
(181, 'Cooler Master V750 SFX 80PLUS GOLD', 'Blocs d\'alimentation', 'Cooler', 'Master V750 SFX 80PLUS GOLD', 'L\'alimentation V750 SFX de Cooler Master 80Plus Gold a tout pour intégrer le boitier des utilisateurs exigeants : câblage totalement modulaire, connectique complète et câbles PCIe 16 AWG, composants japonais de très haute qualité et une certification 80+ Gold.', 1950, '1 mois', 4, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Blocaliment%2FBlocd\'alimentation2.jpg?alt=media&token=abbafae6-9793-4404-81f3-4e4eed060bb9'),
(182, 'Gigabyte B550M DS3H', 'Carte mère', 'Gigabyte', ' B550M DS3H', 'La carte mère Gigabyte B550 DS3H sera parfaite pour une configuration Gaming de pointe. Conçue pour les processeurs AMD Ryzen de 3ème génération sur socket AMD AM4, elle propose le PCI-Express 4.0 et la gestion de 128 Go de RAM DDR4.', 1399, '1 mois', 0.75, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Cartemere%2FGigabyte-Cartemere.jpg?alt=media&token=ae2e9931-0257-45cc-b9c9-c88c806bb983'),
(183, 'ASUS TUF GAMING B550-PLUS', 'Carte mère', 'ASUS', ' TUF GAMING B550-PLUS', 'Prête à accueillir les processeurs AMD Ryzen de 3ème génération (nom de Core Matisse), la carte mère ASUS TUF GAMING B550-PLUS est idéale pour concevoir un PC Gaming performant et équilibré. Le support du PCI-Express 4.0 vous emmène vers de nouveaux sommets.', 1999, '1 mois', 0.75, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Cartemere%2Fasus_tuf_Cartemere.jpg?alt=media&token=86dc014b-89d6-46e7-91e8-a06cb3de7794'),
(184, 'Canon Jet d\'encre PIXMA MG2540S Couleur MFP 3en1 A4 PPM B&W 8 PPM Col 4', 'Imprimante', 'Canon', 'Jet d\'encre PIXMA MG2540S Couleur MFP 3en1 A4 PPM B&W 8 PPM Col 4', 'Canon Jet d\'encre PIXMA MG2540S MFP 3en1 A4 PPM B&W 8 PPM Col 4/Imprimante Canon Pixma MG2540S Multifonction 3 en 1 (Impression,Scan,Copie) - Port USB , Vitesse d\'impression 8 ppm Noir , Format de papier A4', 430.99, '1 mois', 3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Imprimante%2FDanonImprimante.jpg?alt=media&token=255c4c16-747d-47b6-8bf6-90b395d60690'),
(185, 'Canon Jet d\'encre Pixma GSeries G2411 3en1 A4 9 PPM B&W 4800x1200 ppp, 8,8mono/Col 5,0ipm', 'Imprimante', 'Canon', 'Jet d\'encre Pixma GSeries G2411 3en1 A4 9 PPM B&W 4800x1200 ppp, 8,8mono/Col 5,0ipm', 'Impression, copie et scan - Vitesse d\'impression noir: Jusqu\'à 8,8 ppm - Vitesse d\'impression couleur: Jusqu\'à 5 ppm - Qualité d\'impression noire: Jusqu\'à 4800 × 1200 DPI (ppp) - Qualité d\'impression couleur: Jusqu\'à 4800 × 1200 DPI (ppp) - Impression recto/verso: Manuelle - Fonctionne avec: 4 Réservoirs (noir, cyan, magenta, jaune) - Connectivité: 1 port USB 2.0', 1730.66, '1 mois', 3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Imprimante%2FCanonImprimanteChaire.jpeg?alt=media&token=b194d812-ecfc-42ec-918a-df111935ff0a'),
(186, 'EPSON IMPRIMANTE MATRICIELLE DFX-9000', 'Imprimante', 'Epson', 'MATRICIELLE DFX-9000', 'L\'imprimante matricielle à impact 9 aiguilles pour gros volumes d\'impression la plus rapide de sa catégorie', 39360, '1 mois', 9, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Imprimante%2FImprimanteepson.png?alt=media&token=91774ff7-55e9-47a0-b443-32dac6fb6f7e'),
(187, 'HP Laser Enterprise MFP M528dn Mono Multi fonction3 en 1 A4 Réseau R/V PPM B&W 43', 'Imprimante', 'Hp', 'Laser Enterprise MFP M528dn Mono Multi fonction3 en 1 A4 Réseau R/V PPM B&W 43', 'L\'imprimante Laser Enterprise MFP M528dn Mono Multi fonction3 pour gros volumes d\'impression la plus rapide de sa catégorie', 20545.99, '1 mois', 9, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Imprimante%2FHp-imprimante.jpeg?alt=media&token=f99b4bbf-fcb7-4833-9e96-cabd438de93a'),
(188, 'ASUS ROG Strix XG49VQ 49\' 144 Hz', 'Ecran', 'Asus', 'ROG Strix XG49VQ 49\' 144 Hz', 'Vivez le gaming à grande échelle avec le moniteur ASUS ROG Strix XG49VQ ! Équipé d’une dalle VA Ultra Wide de 49 pouces 32:9 et d’une résolution atteignant les 3840 x 1080 pixels, cet écran hors-norme saura vous satisfaire au cours de vos parties endiablées.', 11290.99, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FAsus-Ecran-144hz.jpg?alt=media&token=b0855d1a-abc5-4d7e-b095-9cb498747da6'),
(189, 'HP 25\' LED - OMEN X 25F 240Hz', 'Ecran', 'Hp', '25\' LED - OMEN X 25F 240Hz', 'Vivez une expérience gaming à la hauteur de vos objectifs à l\'aide du moniteur HP Omen X 25F armé d\'une dalle TN de 24.5 pouces avec résolution Full HD. Equipé des technologies AMD FreeSync et NVIDIA G-SYNC compatible et capable de supporter 240 Hz et 1 ms de temps de réponse.', 4890, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FHp25.jpg?alt=media&token=25fbebdf-0b6b-4486-bfcb-77a6667b2a6d'),
(190, 'BenQ GL2780 27\' LED 1ms 75Hz', 'Ecran', 'BenQ', 'GL2780 27\' LED 1ms 75Hz', 'le moniteur BenQ GL2780 peut compter sur sa dalle TN réactive de 75 Hz avec un temps de réponse de seulement 1 ms pour vous offrir de bonnes performances durant vos parties. La résolution Full HD (1920 x 1080) procure une image nette et protégera vos yeux sur la durée à l’aide de la solution BenQ Eye-Care.', 2290, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FBenQ.jpeg?alt=media&token=f7d901be-1eb0-4302-a8be-df628aa2843b'),
(191, 'Samsung 55\' LS55BG970NUXEN Quantum Mini LED Odyssey Ark Smart Gaming 4K', 'Ecran', 'Samsung', '55\' LS55BG970NUXEN Quantum Mini LED Odyssey Ark Smart Gaming 4K', 'L\'écran PC incurvé Samsung Odyssey Ark Smart Gaming offre une immersion maximale pour une expérience de jeu supérieure grâce à sa diagonale de 55″, sa courbure de 1000R, sa résolution 4K et son taux de rafraichissement de 165 Hz. C\'est l\'écran parfait pour les jeux de dernière génération.', 34990, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FSamsung55.jpg?alt=media&token=1a1d5aa6-0e9f-4b7f-b870-bbd3fc60aa66'),
(192, 'Samsung 32\' LED Odyssey G5 C32G55TQWR 2K 144Hz INCURVÉE', 'Ecran', 'Samsung', '32\' LED Odyssey G5 C32G55TQWR 2K 144Hz INCURVÉE', 'l\'écran gaming Samsung Odyssey G5 C32G55TQWR ! Offrant des performances élevées, une immersion supérieure et un confort permanent, ce modèle vous assurera des conditions rêvées pour atteindre les sommets dans vos jeux préférés.', 3690, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FSamsung32.jpg?alt=media&token=7a4d977a-33ac-4fa7-81d2-105c2fdfdaaf'),
(193, 'AOC 23.8\' LED 24B2XDM 75Hz FHD', 'Ecran', 'Aoc', '23.8\' LED 24B2XDM 75Hz FHD', 'Simple et efficace, le Moniteur 24 pouces AOC 24B2XDM est un outil confortable et pratique pour vos activités de bureautique ou vos envies multimédia. Bénéficiez d’une belle image Full HD lumineuse et contrastée et d’un design moderne aux bords fins pour une intégration naturelle.', 1290, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FAOC24.jpg?alt=media&token=6c8e79f1-8330-49cb-870d-8d709c8102d1'),
(194, 'LG 27\' 27GL63T-B FHD IPS 144Hz', 'Ecran', 'Lg', '27\' 27GL63T-B FHD IPS 144Hz', 'Grâce au moniteur LG 27GL63T-B, vous disposez de toutes les armes pour devenir le maître incontesté de la partie. En plus de ses qualités gaming avec FreeSync, taux de 144 Hz et temps de réponse de 1 ms, ce modèle se dote de qualités techniques supérieures.', 2390, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FlgEcran.jpeg?alt=media&token=9fc749bf-f702-4ef3-b5b3-3fde8a8e2696'),
(195, 'MSI 27\' LED Modern MD271PW', 'Ecran', 'MSI', '27\' LED Modern MD271PW', 'En plus de performances efficaces, le moniteur MSI Modern MD271PW met à votre disposition un environnement confortable et adapté à vos besoins. Protection oculaire renforcée, connectique complète, position ajustable et module KVM, les qualités de cet écran se dévoilera sous vos yeux.', 2990, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FMSi.jpg?alt=media&token=8680ddc8-ede9-4c34-bff5-850863deb4b7'),
(196, 'Hybrok WINGS HW321CU 32\' 2K CURVED RGB 165Hz', 'Ecran', 'Hybrok', 'WINGS HW321CU 32\' 2K CURVED RGB 165Hz', 'Profitez d\'une fréquence de rafraîchissement de 165 Hz et d\'un temps de réponse ultra-rapide. Ce modèle Full HD de 32\' équipé d\'une dalle VArespectera vos yeux avec des technologies dédiées et optimisera votre confort grâce à son pied ergonomique. ', 3290, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2Fhybrok.jpg?alt=media&token=3b33a755-4d7c-48ec-8270-52c4540311eb'),
(197, 'ViewSonic VA2432-H 24\' IPS 75Hz', 'Ecran', 'ViewSonic', 'VA2432-H 24\' IPS 75Hz', 'Posé avec élégance sur un bureau, le moniteur ViewSonic VA2432-MHD brille par ses lignes travaillées mais aussi par ses performances ! Avec sa dalle IPS SuperClear et sa résolution Full HD, cet écran vous accompagne de la plus agréable des façons.', 1390, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2Fviewsonic.jpg?alt=media&token=be6c4ea1-4520-4d8b-9408-f04760b16047'),
(198, 'iiyama 43\' LED G4380UHSU-B1 144Hz 0.4ms 4K Red Eagle', 'Ecran', 'Iiyama', '43\' LED G4380UHSU-B1 144Hz 0.4ms 4K Red Eagle', 'Avec son format XXL de 42.5″ et sa résolution 4K UHD, le moniteur iiyama G4380UHSU-B1 vous transporte vers un divertissement toujours plus impressionnant. Certifié HDR400 et équipé d\'une dalle VA au format 16/9, ce modèle combine une grande richesse visuelle avec des performances de jeu supérieures.', 7690, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Ecrans%2FMoniteur-iiyama.png?alt=media&token=1d3b4b64-79b5-4c87-b8fc-0c5404c604c8'),
(199, 'Canon Scanner Image FORMULA DR-C240', 'Scanner', 'Canon', 'Scanner Image FORMULA DR-C240', 'Le scanner imageFORMULA DR-C240 est un scanner de bureau puissant et ultra-compact, de conception robuste et offrant un transport fiable du papier, capable de capturer des supports très variés et des formats papier hétérogènes mélangés, y compris des passeports.', 7580, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Scanners%2FScannerCanon.png?alt=media&token=09865bc2-d3d5-4275-8a7c-934f9b857b1a'),
(200, 'Epson WF DS-60000N, Scanners,A3, 200Pages , Auto Rotation', 'Scanner', 'Epson', 'WF DS-60000N, Scanners,A3, 200Pages , Auto Rotation', 'WorkForce DS-60000N - A3 - Recto Verso , 40 ppm , Ethernet , Chargeur documents 200 pages, 5000 pages par', 59262, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Scanners%2FScannerepson.png?alt=media&token=eaba6846-a60a-4459-995c-a8fd3fb23b4d'),
(201, 'HP ScanJet Pro 2600 f1 Scanne 600dpi 25 ppm/50 IPM ADF R/V 60P one pass 12 Mois', 'Scanner', 'Hp', 'ScanJet Pro 2600 f1 Scanne 600dpi 25 ppm/50 IPM ADF R/V 60P one pass 12 Mois', 'Chargeur automatique de documents; Technologie de numérisation CIS; Scanner à plat', 4065, '1 mois', 13, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Scanners%2FScannerHp.png?alt=media&token=332f4d10-bd42-42ed-8857-d17a5ca25edb'),
(202, 'Razer Kraken X Lite', 'Casque', 'Razer', 'Kraken X Lite', 'Ultra léger, le Razer Kraken X Lite est non seulement agréable à porter, mais également ultra-immersif avec un son surround 7.1. Avec ce casque sur les oreilles, vous ne ferez qu’une bouchée de vos adversaires. Ce casque circum-auriculaire est doté d’un rembourrage épais ainsi qu’un microphone flexible.', 399, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Casque%2FCasquerazer.jpg?alt=media&token=1a43ce0e-100f-4afe-8dbe-b7881541daaf'),
(203, 'Casque Gamer Razer Blackshark V2', 'Casque', 'Razer', 'Blackshark V2 ', 'Avec le Razer BlackShark v2, profitez d\'une expérience audio totalement immersive, incroyable de puissance et de réalisme pour le jeu sur PC et consoles. Ce casque circum-aural fermé avec carte son USB permet une isolation phonique exceptionnelle.', 659, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Casque%2FCasquerazerblackshark.jpg?alt=media&token=68754043-06c4-4e73-aa3d-0c9ddbf5b67c'),
(204, 'Casque Gamer Logitech G733 Lightspeed (Bleu)', 'Casque', 'Logitech', 'G733 Lightspeed ', 'Avec le micro-casque Logitech G733, vous disposez d’un casque spécialement conçu pour un confort inégalé. Doté du son surround DTS Headphone:X 2.0, ce dernier crée une précision positionnelle exceptionnelle en jeu pour que vous puissiez entendre vos ennemis se faufiler derrière vous.', 1799, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Casque%2FCasquelogitech.jpg?alt=media&token=eac360a9-a183-4c09-a7f5-befceb87e4ea'),
(205, 'Logitech G G413 Mechanical Gaming Keyboard (Carbone)', 'Clavier', 'Logitech', 'G G413 Mechanical Gaming ', 'Le Logitech G413 Mechanical Gaming Keyboard vous offre des performances incroyables ainsi qu\'une technologie et des fonctionnalités avancées. Pour cela, il s\'appuie sur des switchs mécaniques Romer-G qui offrent une réactivité inédite jusqu\'à + 25%', 999, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Clavier%2FLogitech-G413Clavier.jpg?alt=media&token=aa480419-2e6a-49f6-9a18-366ac4606f2a'),
(206, 'HP 125 Wired Keyboard-FR 12M', 'Clavier', 'Hp', '125 Wired Keyboard-FR 12M', 'Le clavier filaire complet trois zones HP 125 inclut un pied ajustable de 0 à 6 1 degrés pour taper confortablement. En outre, un témoin LED de verrouillage Majuscules, Clavier numérique et Fonction vous rappelle que ces fonctionnalités sont activées.\nCompatible avec les ordinateurs possédant un port USB-A disponible.', 217, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Clavier%2FClavier-Hp.jpg?alt=media&token=31897aa1-d322-40b3-b9cf-963986963bc8'),
(207, 'Clavier Gamer Logitech G G815 Carbone (Tactile Version)', 'Clavier', 'Logitech', 'G G815 Carbone (Tactile Version)', 'Conçu pour des sessions de jeu hautes performances grâce à ses switches GL Tactile, le clavier Logitech G815 Carbone vous aidera à atteindre les sommets. Entièrement personnalisable, il est équipé de la technologie RGB Lightsync et de touches G dédiées.', 2190, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Clavier%2FClavier-logitech-expensive.jpg?alt=media&token=faf79b18-1087-4745-83bf-f6920bce3bc6'),
(208, 'HP 125 Wired Mouse 12M', 'Souris', 'Hp', '125 Wired Mouse 12M', 'La souris filaire HP 125 comprend des boutons gauche et droit parfaitement positionnés et une molette de défilement', 91, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Souris%2FSourisHp.png?alt=media&token=84af2e49-0f8b-4fe6-bb93-1e657a2840d8'),
(209, 'Logitech G305 Lightspeed Wireless Gaming Mouse (Blanc)', 'Souris', 'Logitech', 'G305 Lightspeed Wireless Gaming Mouse (Blanc)', 'Profitez d\'une expérience sans fil incroyable grâce à la technologie sans fil Lightspeed de la Logitech G305 Lightspeed Wireless Gaming Mouse. En effet, cette dernière vous offre des performances sans fil de niveau professionnel et une fiabilité inégalée.', 499, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Souris%2FLogitech-souris.jpg?alt=media&token=dbd090bd-de35-4be9-9223-f61966402806'),
(210, 'Razer Viper 8KHz', 'Souris', 'Razer', 'Viper 8KHZ', 'Frappez votre ennemi avec une précision mortelle grâce à la Razer Viper 8KHz. Cette souris filaire embarque un capteur optique Razer Focus+ de 20000 DPI et 8 boutons entièrement programmables.', 949, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Souris%2FRazer-Vipe.png?alt=media&token=be89442e-c349-410f-b6e4-e06c40f6ce91'),
(211, 'ADATA CLE USB METAL UV210 32GB', 'Usb', 'ADATA', 'METAL UV210 32GB', 'ADATA UV250 lecteur USB flash 32 Go USB Type-A 2.0 Argent: ADATA UV250, 32 Go, USB Type-A, 2.0, Sans capuchon, 5,6 g, Argent.', 64, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Usb%2FUSB-ADAta.jpeg?alt=media&token=d69bfb96-d80a-455f-a324-00ba817fda69'),
(212, 'ADATA CLE USB METAL UV128 128GB 3.2', 'Usb', 'ADATA', 'METAL UV128 128GB 3.2', 'nterface de transmission à grande vitesse USB 3.2; Un design sans capuchon qui s\'ouvre d\'un coup de pouce; Gracieux et minimaliste.', 175, '1 mois', 0.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Usb%2Fusbbb.png?alt=media&token=f1f98f31-6b25-4506-905c-6ed5c6b8565b'),
(213, 'Razer Seiren Mini (Mercury)', 'Microphone', 'Razer', 'Seiren Mini (Mercury)', 'Le Razer Seiren Mini est un microphone électrostatique ultra-compact qui est la solution idéale pour un son de qualité professionnelle dans n\'importe quelle configuration de diffusion. Équipement de choix pour être entendu de la meilleure façon possible, il bénéficie d\'une conception minutieuse.', 699, '1 mois', 0.75, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Micro%2FMicroRazer.jpeg?alt=media&token=7f597108-b50c-4431-9705-db48fb486c26'),
(214, 'Microphone HyperX Quadcast S Noir', 'Microphone', 'HyperX', 'Quadcast S Noir', 'le microphone HyperX Quadcast S est idéal pour les streamers, créateurs de contenu et joueurs. Ce microphone à condensateurs offre un son de qualité alors que son pied amortisseur de vibrations réduit les perturbations de la vie quotidienne.', 1649, '1 mois', 0.75, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Micro%2FMicrophone-HyperX.jpg?alt=media&token=bf086526-58c3-4a7f-a184-4c316d742124'),
(215, 'Microphone Mars Gaming MMICKIT 7-IN-1', 'Microphone', 'MarsGaming', 'Gaming MMICKIT 7-IN-1', 'Profitez d\'un équipement studio avec le Mars Gaming MMICKIT. Composé d\'un microphone professionnel unidirectionnel et de 6 accessoires donc un support antivibrations, un bras articulé avec fixation ou encore d\'un filtre anti-pop, vous allez bénéficier d\'un haut niveau de qualité.', 1200, '1 mois', 2.5, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Micro%2FMars-gaming-micro.jpg?alt=media&token=b219a78e-f610-40e0-b572-46b22d0d2f3a'),
(216, 'Elgato Wave:3', 'Microphone', 'Elgato', 'Wave 3', 'Avec le Elgato Wave:3, profitez d\'un microphone de qualité professionnelle pouvant se brancher directement à votre installation ainsi qu\'à une console de mixage. Proposant une courbe de directivité cardioïde, il est parfait pour l\'enregistrement de voix.', 2190, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Micro%2Felgato.jpeg?alt=media&token=5b253cc8-6e20-4ee7-995c-7bc08a00cb50'),
(217, 'Logitech Multimedia Speakers Z333', 'Hautparleur', 'Logitech', 'Multimedia Speakers Z333', 'Avec ses 40 watts RMS, le système Logitech Multimedia Speakers Z333 offre un son puissant, immersif, net, clair et équilibré. Le caisson de basses situé à l\'avant dispose d\'un transducteur de 5″ pour une réponse des basses profonde.', 790, '1 mois', 3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Haut%2Flogitech-haut.jpg?alt=media&token=b8933be3-5055-4828-a55c-6e77b3df5277'),
(218, 'Razer Nommo 2.0 Chroma', 'Hautparleur', 'Razer', 'Nommo 2.0 Chroma', 'La Razer Nommo Chroma, immergez-vous complètement dans votre expérience vidéoludique grâce à de haut-parleurs conçus pour obtenir une extrême clarté et une gamme complète de sons. Ce kit 2.0 vous emmène dans une nouvelle dimension qui efface la limite entre la fiction et la réalité.', 2199, '1 mois', 3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/Haut%2Frazer-haut.jpg?alt=media&token=b37fa291-8b05-4a94-993b-a9664d5421ad'),
(219, 'Logitech HD Webcam C930e', 'Webcam', 'Logitech', 'HD Webcam C930e', 'La Logitech HD Webcam C930e est la webcam la plus avancée de Logitech. Destinée aux professionnels, elle reprend en grande partie les caractéristiques de la C920. Elle est la première webcam à prendre en charge l\'encodage H.264.', 1490, '1 mois', 1, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/webcam%2FWEBcamlogitech.jpg?alt=media&token=517c5b8c-fbfc-4626-aea2-64bcbdb920e2'),
(220, 'Stream Webcam Logitech BRIO 4K Stream Edition', 'Webcam', 'Logitech', 'BRIO 4K Stream Edition', 'La webcam Logitech BRIO 4K Stream Edition vous permettra de capturer les moindres détails des expressions de votre visage et de maintenir une qualité Full HD lorsque vous zoomez. De plus, la résolution HDR donne vie aux couleurs, sans rien perdre en précision.', 1890, '1 mois', 3, 'https://firebasestorage.googleapis.com/v0/b/images-projet-front-end.appspot.com/o/webcam%2Flogitech-brio-4k-stream-edition-webcams.jpg?alt=media&token=53ecf4b2-81f5-47e7-b7d9-c3ba53951912');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`, `full_number`, `adress`, `city`, `state`, `country`, `zip_code`, `is_admin`) VALUES
(4, 'Ayoub', 'SEGHROUCHNI', 'ayoubosseg@gmail.com', 'ayoub', '07669383137', 'QUARTIER ADMINISTRATIF RUE EL BARID NO 03 AHFIR', 'AHFIR BERKANE', 'OUJDA', 'MAROC', 63300, 1),
(6, 'abdelali', 'BERRABHIA', 'abdelali@gmail.com', 'abdelali', '0600000000', 'QUARTIER LHASSAN SADISS 03 RABAT', 'RABAT', 'RABAT', 'MAROC', 70000, 0),
(7, 'mohammed', 'Chillou', 'chillou@gmail.com', 'chillou', '060454050454', '78 RUE Mimoun chillou SELOUANE', 'Nador', 'Nador', 'maroc', 65000, 0),
(8, 'fdfdfd', 'fdfdfd', 'fdfdf@fdfd.com', 'fdfdf', '0787078899', 'fdfdfd', 'ddfdfd', 'dfdf', 'fdfdf', 54878, 0),
(9, 'Ibrahim', 'El houzi', 'houzi@ump.ac.ma', 'houzi', '0700000000', 'Rue agdal num 10', 'Oujda', 'Oujda', 'Maroc', 65000, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `configuration`
--
ALTER TABLE `configuration`
  ADD CONSTRAINT `configuration_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `configuration_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `component` (`comp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ordere`
--
ALTER TABLE `ordere`
  ADD CONSTRAINT `ordere_ibfk_1` FOREIGN KEY (`bascket_id`) REFERENCES `bascket` (`bascket_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordere_ibfk_2` FOREIGN KEY (`comd_id`) REFERENCES `commande` (`comd_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordere_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordere_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
