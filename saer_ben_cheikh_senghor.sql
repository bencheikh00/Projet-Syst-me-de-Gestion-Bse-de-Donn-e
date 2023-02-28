-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 24 juil. 2022 à 14:40
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `saer ben cheikh senghor`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `Numéro` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Nom`, `Prénom`, `Numéro`) VALUES
('Camara', 'Mr', 786935214),
('Kane', 'Amadou', 775689636),
('Ndiaye', 'Omar', 768593521);

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE `contrat` (
  `Numero contrat` int(15) NOT NULL,
  `Type contrat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`Numero contrat`, `Type contrat`) VALUES
(165235986, 'Indéterminé'),
(256458369, 'Déterminé'),
(459369785, 'Déterminé');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `Numero facture` int(20) NOT NULL,
  `compteur` varchar(15) NOT NULL,
  `montant facture` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`Numero facture`, `compteur`, `montant facture`) VALUES
(1254845698, 'Electronique', 360),
(1756936985, 'Electronique', 141),
(2068369875, 'Electronique', 200);

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

CREATE TABLE `parking` (
  `numero parking` int(20) NOT NULL,
  `capacité` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`numero parking`, `capacité`) VALUES
(10, 25),
(11, 20),
(12, 15);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `numero immmatriculation` int(20) NOT NULL,
  `marque` varchar(25) NOT NULL,
  `type carburant` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`numero immmatriculation`, `marque`, `type carburant`) VALUES
(137896, 'BMW', 'Diesel'),
(145256, 'AUDI', 'Diesel'),
(156938, 'RENAULT', 'Diesel');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD PRIMARY KEY (`Numero contrat`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`Numero facture`);

--
-- Index pour la table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`numero parking`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`numero immmatriculation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
