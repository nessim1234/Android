-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 21 Novembre 2016 à 12:59
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `android`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `numero` int(11) NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type_droits` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_login`
-- Mots de passes : pass
--

INSERT INTO `tbl_login` (`numero`, `email`, `password`, `type_droits`) VALUES
(1, 'nessim.l@Hotmail.ch', '1a1dc91c907325c69271ddf0c944bc72', 'admin'),
(2, 'nessim.l@rpn.ch', '1a1dc91c907325c69271ddf0c944bc72', 'user');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
