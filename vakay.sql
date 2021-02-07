-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 06 fév. 2021 à 20:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vakay`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(6) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'Eyeglasses'),
(2, 'Sun Glasses');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(6) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(30) NOT NULL,
  `prenom_client` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `tel` varchar(8) DEFAULT NULL,
  `adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_cmd` int(6) NOT NULL AUTO_INCREMENT,
  `date_liv` date NOT NULL,
  `total_cmd` float NOT NULL,
  `date_cmd` date NOT NULL,
  `id_client` int(6) NOT NULL,
  PRIMARY KEY (`id_cmd`),
  KEY `id_client` (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `id_lig_commande` int(6) NOT NULL AUTO_INCREMENT,
  `id_produit` int(6) DEFAULT NULL,
  `id_cmd` int(6) DEFAULT NULL,
  PRIMARY KEY (`id_lig_commande`),
  KEY `id_produit` (`id_produit`),
  KEY `id_cmd` (`id_cmd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `idprod` int(8) NOT NULL AUTO_INCREMENT,
  `nomprod` varchar(30) NOT NULL,
  `prixprod` float NOT NULL,
  `qte_prod` int(200) NOT NULL,
  `id_categorie` int(6) NOT NULL,
  PRIMARY KEY (`idprod`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idprod`, `nomprod`, `prixprod`, `qte_prod`, `id_categorie`) VALUES
(1, 'Aberkane Black', 450, 20, 1),
(2, 'Aganju Bubinga', 500, 15, 1),
(3, 'Ares', 550, 25, 1),
(4, 'Atlas', 480, 15, 1),
(5, 'Cronos', 950, 20, 1),
(6, 'Chloris', 600, 8, 1),
(7, 'Eban Black', 700, 30, 1),
(8, 'El Bey', 650, 24, 1),
(9, 'Lela', 600, 31, 1),
(10, 'Eros', 560, 28, 1),
(11, 'Gaya Walnut', 480, 34, 1),
(12, 'Ithran Bubinga', 680, 20, 1),
(13, 'Linebacker', 550, 35, 1),
(14, 'Mamba Bubinga', 650, 28, 1),
(15, 'Sultan', 500, 40, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `password`, `tel`, `adresse`) VALUES
(2, 'malek', 'soufi', 'soufi_malek@live.fr', '123456', '55780707', '4 rue de corail , cite 25 juillet Ariana'),
(3, 'malek', 'soufi', 'soufi_malek@live.fr', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', '55780707', '4 rue de corail , cite 25 juillet Ariana'),
(5, 'soufi', 'nour', 'nourmalek@gmail.com', 'a454a1dfe6dfc1a1b9f1c14ef6bdd224661f39e0c6911bbcd43126b705034dd2', '20780250', 'spain');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
