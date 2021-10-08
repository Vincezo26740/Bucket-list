-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 oct. 2021 à 19:25
-- Version du serveur :  8.0.21
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wishes`
--

-- --------------------------------------------------------

--
-- Structure de la table `wish`
--

DROP TABLE IF EXISTS `wish`;
CREATE TABLE IF NOT EXISTS `wish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wish`
--

INSERT INTO `wish` (`id`, `title`, `description`, `author`, `is_published`, `date_created`) VALUES
(1, 'Faire le tour du monde', 'Un petit test de description pour un nouveau wish', 'Moi', 1, '2021-10-04'),
(2, 'Arrêter la pollution', 'Un jour peut-être on y arrivera', 'Mélaine', 1, '2021-10-04'),
(3, 'Plus de famine ', 'Si on arrêtait tout les gros mangeur', 'Moi', 1, '2021-10-04'),
(4, 'Faire 2 fois le tour du monde', 'Un petit test de description pour un nouveau wish', 'Moi', 1, '2021-10-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
