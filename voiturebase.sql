-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 mai 2023 à 07:25
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `voiturebase`
--

-- --------------------------------------------------------

--
-- Structure de la table `locataires`
--

DROP TABLE IF EXISTS `locataires`;
CREATE TABLE IF NOT EXISTS `locataires` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `adress` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `locataires`
--

INSERT INTO `locataires` (`id`, `nom`, `adress`) VALUES
(1, 'RAKOTO', 'Tamatave'),
(28, 'KOTO', 'DTVGH'),
(3, 'KOTO TOJO', ''),
(6, 'RABE', 'TULEAR'),
(34, 'VOLA', 'FIANAR'),
(25, 'ALAIN', 'Majenga'),
(11, 'BOSS', 'Fsoa'),
(18, 'LUIES', 'TANANA'),
(16, 'LEBRWON JAMES', 'USA'),
(14, 'CHRIS', 'Fsoa'),
(17, 'Ludo Vick', 'Fsoa'),
(19, 'JEANNE', 'Manakara'),
(21, 'FANIRY', 'Manakara'),
(24, 'GINAH', 'Paris'),
(30, 'GROS', 'Paris'),
(33, 'CROS', 'ARDS');

-- --------------------------------------------------------

--
-- Structure de la table `louer`
--

DROP TABLE IF EXISTS `louer`;
CREATE TABLE IF NOT EXISTS `louer` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_locataire` int(11) NOT NULL,
  `id_voiture` int(11) NOT NULL,
  `nbJour` int(9) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_voiture` (`id_voiture`),
  KEY `id_locataire` (`id_locataire`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `louer`
--

INSERT INTO `louer` (`id`, `id_locataire`, `id_voiture`, `nbJour`, `date`) VALUES
(276, 11, 17, 4, '2022-04-06'),
(287, 25, 11, 31, '2022-04-14'),
(5, 21, 14, 7, '2022-04-01'),
(283, 25, 28, 100, '2022-04-09'),
(282, 1, 2, 10, '2020-04-09'),
(286, 25, 14, 31, '2022-04-14'),
(275, 24, 23, 55, '2022-04-06'),
(285, 18, 12, 25, '2020-04-14'),
(56, 21, 14, 70, '2022-04-01'),
(281, 16, 27, 5, '2022-04-06'),
(280, 19, 9, 5, '2020-04-06'),
(284, 25, 10, 12, '2022-04-14'),
(54, 21, 14, 70, '2022-04-01'),
(278, 18, 1, 5, '2022-04-06'),
(277, 18, 4, 5, '2022-04-06'),
(273, 25, 27, 10, '2022-04-06'),
(288, 18, 29, 32, '2022-04-01'),
(289, 28, 32, 20, '2022-04-15'),
(290, 28, 34, 15, '2022-04-15'),
(291, 28, 33, 5, '2021-04-09'),
(292, 28, 35, 5, '2021-04-15'),
(294, 30, 29, 5, '2022-04-16'),
(295, 11, 33, 20, '2022-04-16'),
(296, 11, 1, 7, '2022-04-16'),
(297, 11, 14, 13, '2022-04-16'),
(298, 6, 14, 5, '2022-04-16'),
(299, 30, 35, 4, '2022-04-16'),
(300, 30, 34, 4, '2022-04-16'),
(301, 24, 32, 5, '2022-04-16'),
(302, 24, 33, 5, '2022-04-16'),
(303, 21, 29, 55, '2022-04-16'),
(304, 6, 27, 55, '2022-04-16'),
(305, 11, 12, 65, '2022-04-16'),
(306, 16, 2, 8, '2022-04-16'),
(307, 16, 35, 2, '2022-04-16'),
(308, 24, 35, 5, '2022-04-16'),
(309, 30, 35, 5, '2022-04-16'),
(310, 30, 28, 10, '2022-04-16'),
(311, 30, 27, 15, '2022-04-16'),
(313, 19, 27, 10, '2022-04-16'),
(314, 19, 18, 14, '2022-04-16'),
(315, 17, 33, 10, '2022-04-02'),
(316, 14, 1, 10, '2021-04-16'),
(328, 34, 66, 3, '2022-08-18'),
(318, 3, 4, 100, '2021-04-16'),
(319, 3, 10, 50, '2021-08-16'),
(320, 11, 11, 52, '2021-04-16'),
(321, 30, 12, 7, '2022-04-16'),
(322, 17, 9, 10, '2020-04-16'),
(323, 14, 21, 10, '2022-05-08'),
(325, 1, 1, 10, '2022-06-21'),
(326, 3, 5, 22, '2022-06-20'),
(327, 33, 41, 20, '2022-06-21');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `designation` varchar(15) NOT NULL,
  `etat` varchar(10) DEFAULT NULL,
  `loyerJ` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `numero`, `designation`, `etat`, `loyerJ`) VALUES
(1, '6975 FD', 'FERRARI', 'DISPO', 2000),
(2, '4682 WTE', 'LAMBOURGINIE', 'DISPO', 1000),
(23, '2345 FT', 'PEUGOT', 'NON DISPO', 1000),
(4, '1981 FC', 'TOYOTA', 'DISPO', 6000),
(10, '5755 FF', 'REXTON', 'DISPO', 6000),
(22, '9878 FT', 'TATA', 'NON DISPO', 110),
(9, '8888 FE', 'REXTON', 'DISPO', 50),
(11, '5585 FF', 'REXSTON', 'DISPO', 1200),
(12, '8686 FD', 'MAZDA', 'DISPO', 600),
(14, '7897 FX', '', 'NON DISPO', 300),
(17, '1654 FF', 'TTAT', 'DISPO', 520),
(18, '13545 TTE', 'MUTAN', 'DISPO', 30),
(21, '19581 FD', 'MA', 'NON DISPO', 56),
(28, '7542 TTA', 'FORD', 'DISPO', 750),
(27, '7567 TBE', '4564', 'DISPO', 5500),
(41, 'XT 285 FWD', 'REXTON', 'NON DISPO', 500),
(29, '1212 FC', '205 ', 'NON DISPO', 100),
(31, '152 FR', 'TRUENO', 'NON DISPO', 10),
(32, '46548 FE', 'FEFE', 'NON DISPO', 200),
(33, '3333 FF', 'MMM', 'DISPO', 300),
(66, '1818 FX', 'MAZDA5', 'NON DISPO', 3000),
(68, '4545 FD', 'MAZDA', 'DISPO', 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
