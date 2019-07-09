-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 09 Juillet 2019 à 17:17
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projetfilrouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `catalogueformation`
--

CREATE TABLE IF NOT EXISTS `catalogueformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(100) NOT NULL,
  `dateDebut` varchar(100) NOT NULL,
  `dateFin` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE IF NOT EXISTS `comptes` (
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salarieId` int(11) NOT NULL,
  `managerId` int(11) NOT NULL,
  `rhId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comptes`
--

INSERT INTO `comptes` (`login`, `password`, `salarieId`, `managerId`, `rhId`) VALUES
('test', 'test', 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
  `idFormation` int(11) NOT NULL,
  `idSalarie` int(11) NOT NULL,
  `statut` varchar(100) NOT NULL,
  PRIMARY KEY (`idFormation`,`idSalarie`),
  KEY `idSalarie` (`idSalarie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `fonction` varchar(100) NOT NULL,
  `dateEmbauche` varchar(100) NOT NULL,
  `employeAgerer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employeAgerer` (`employeAgerer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `manager`
--

INSERT INTO `manager` (`id`, `nom`, `prenom`, `email`, `adresse`, `fonction`, `dateEmbauche`, `employeAgerer`) VALUES
(1, 'lorris', 'guillemot', 'lorris97@hotmail.fr', '37 rue henri golaudin', 'responsable marketing', '01/12/1997', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rh`
--

CREATE TABLE IF NOT EXISTS `rh` (
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `fonction` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE IF NOT EXISTS `salarie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `fonction` varchar(100) NOT NULL,
  `dateEmbauche` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`id`, `nom`, `prenom`, `email`, `adresse`, `fonction`, `dateEmbauche`) VALUES
(1, 'test', 'test', 'test', 'test', 'test', '01/12/1997');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`employeAgerer`) REFERENCES `salarie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
